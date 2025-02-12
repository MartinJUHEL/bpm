import 'dart:async';

import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/data/models/ad/ad_model.dart';
import 'package:assoshare/data/services/ad_firebase_service.dart';
import 'package:assoshare/data/services/favorite_firebase_service.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/domain/repositories/favorite_repository.dart';
import 'package:injectable/injectable.dart';

/// Implementation of the favorites repository
/// Manages:
/// - Caching of favorite IDs
/// - Fetching complete ads via AdFirebaseService
/// - Data transformation into entities
@LazySingleton(as: FavoriteRepository)
final class FavoriteRepositoryImpl extends BaseRemoteRepository implements FavoriteRepository {
  final FavoriteFirebaseService _favoriteService;
  final AdFirebaseService _adFirebaseService;

  /// Local cache of favorite IDs
  /// Avoids unnecessary requests to check if an ad is favorited
  final Set<String> _cache = {};

  /// StreamController to notify cache changes
  final _favoriteIdsController = StreamController<Set<String>>.broadcast();

  FavoriteRepositoryImpl(
    this._favoriteService,
    this._adFirebaseService,
    super._genericErrorTrigger,
    super._connectivityInfo,
    super._logger,
  );

  @override
  Stream<Set<String>> get favoriteIdsStream => _favoriteIdsController.stream;

  /// Updates the cache and notifies listeners
  void _updateCache(Set<String> newCache) {
    _cache
      ..clear()
      ..addAll(newCache);
    _favoriteIdsController.add(_cache);
  }

  /// Retrieves only favorite IDs
  /// Uses cache if available, otherwise makes a request
  /// @param userId User ID
  /// @return Result containing the list of favorited ad IDs
  @override
  Future<Result<List<String>>> getFavoriteIds(String userId) async {
    if (_cache.isEmpty) {
      final result = await safeCall(
        action: () => _favoriteService.getFavorites(userId),
        transform: (favorites) => favorites.map((f) => f.adId).toList(),
      );

      return result.when(
          success: (List<String> favorites) {
            _updateCache(favorites.toSet());
            return Result.success(favorites);
          },
          failure: (_) => result);
    }
    return Result.success(_cache.toList());
  }

  /// Retrieves complete favorites with ad details
  /// For each favorite:
  /// 1. Fetches complete ad via AdFirebaseService
  /// 2. Creates entity directly with ad and favorite date
  /// @param userId User ID
  /// @return Result containing the list of complete favorites
  @override
  Future<Result<List<FavoriteEntity>>> getFavorites(String userId) {
    return safeCall(
      action: () async {
        final favorites = await _favoriteService.getFavorites(userId);

        if (favorites.isEmpty) {
          return <FavoriteEntity>[];
        }

        final List<AdModel> ads =
            await _adFirebaseService.getAdByIds(favorites.map((favorite) => favorite.adId).toList());

        return favorites.map((favorite) {
          final adModel = ads.firstWhere((ad) => ad.id == favorite.adId);
          return FavoriteEntity(
            ad: adModel.toEntity(),
            addedAt: favorite.createdAt,
          );
        }).toList();
      },
      transform: (favorites) => favorites,
    );
  }

  /// Adds an ad to favorites
  /// Updates local cache after operation
  /// @param userId User ID
  /// @param adId ID of the ad to add
  @override
  Future<Result<void>> addFavorite(String userId, String adId) async {
    final result = await safeCall(
      action: () => _favoriteService.addFavorite(userId, adId),
      transform: (_) => null,
    );

    return result.when(
      success: (_) {
        _updateCache(_cache.union({adId}));
        return result;
      },
      failure: (_) => result,
    );
  }

  /// Removes an ad from favorites
  /// Updates local cache after operation
  /// @param userId User ID
  /// @param adId ID of the ad to remove
  @override
  Future<Result<void>> removeFavorite(String userId, String adId) async {
    final result = await safeCall(
      action: () => _favoriteService.removeFavorite(userId, adId),
      transform: (_) => null,
    );

    return result.when(
      success: (_) {
        _updateCache(_cache.difference({adId}));
        return result;
      },
      failure: (_) => result,
    );
  }

  /// Clears local cache
  /// Called on logout or error
  @override
  void clearCache() {
    _cache.clear();
    _favoriteIdsController.add(_cache);
  }

  @disposeMethod
  void dispose() {
    _favoriteIdsController.close();
  }
}
