import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/data/services/ad_firebase_service.dart';
import 'package:assoshare/data/services/favorite_firebase_service.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/domain/repositories/favorite_repository.dart';
import 'package:injectable/injectable.dart';

/// Implémentation du repository des favoris
/// Gère :
/// - La mise en cache des IDs des favoris
/// - La récupération des annonces complètes via AdFirebaseService
/// - La transformation des données en entités
@LazySingleton(as: FavoriteRepository)
final class FavoriteRepositoryImpl extends BaseRemoteRepository
    implements FavoriteRepository {
  final FavoriteFirebaseService _favoriteService;
  final AdFirebaseService _adFirebaseService;

  /// Cache local des IDs des favoris
  /// Permet d'éviter des requêtes inutiles pour vérifier si une annonce est en favori
  final Set<String> _cache = {};

  FavoriteRepositoryImpl(
    this._favoriteService,
    this._adFirebaseService,
    super._genericErrorTrigger,
    super._connectivityInfo,
    super._logger,
  );

  /// Récupère uniquement les IDs des favoris
  /// Utilise le cache si disponible, sinon fait une requête
  /// @param userId ID de l'utilisateur
  /// @return Result contenant la liste des IDs des annonces en favori
  @override
  Future<Result<List<String>>> getFavoriteIds(String userId) async {
    if (_cache.isEmpty) {
      final result = await safeCall(
        action: () => _favoriteService.getFavorites(userId),
        transform: (favorites) => favorites.map((f) => f.id).toList(),
      );

      return result.when(
          success: (List<String> favorites) {
            _cache.addAll(favorites);
            return Result.success(favorites);
          },
          failure: (_) => result);
    }
    return Result.success(_cache.toList());
  }

  /// Récupère les favoris complets avec les détails des annonces
  /// Pour chaque favori :
  /// 1. Récupère l'annonce complète via AdFirebaseService
  /// 2. Crée directement l'entité avec l'annonce et la date de mise en favori
  /// @param userId ID de l'utilisateur
  /// @return Result contenant la liste des favoris complets
  @override
  Future<Result<List<FavoriteEntity>>> getFavorites(String userId) {
    return safeCall(
      action: () async {
        final favorites = await _favoriteService.getFavorites(userId);
        final futures = favorites.map((favorite) async {
          final adModel = await _adFirebaseService.getAd(favorite.id);
          return FavoriteEntity(
            id: favorite.id,
            ad: adModel.toEntity(),
            createdAt: favorite.createdAt,
          );
        });
        return Future.wait(futures);
      },
      transform: (favorites) => favorites,
    );
  }

  /// Ajoute une annonce aux favoris
  /// Met à jour le cache local après l'opération
  /// @param userId ID de l'utilisateur
  /// @param adId ID de l'annonce à ajouter
  @override
  Future<Result<void>> addFavorite(String userId, String adId) async {
    final result = await safeCall(
      action: () => _favoriteService.addFavorite(userId, adId),
      transform: (_) => null,
    );

    return result.when(
      success: (_) {
        _cache.add(adId);
        return result;
      },
      failure: (_) => result,
    );
  }

  /// Supprime une annonce des favoris
  /// Met à jour le cache local après l'opération
  /// @param userId ID de l'utilisateur
  /// @param adId ID de l'annonce à supprimer
  @override
  Future<Result<void>> removeFavorite(String userId, String adId) async {
    final result = await safeCall(
      action: () => _favoriteService.removeFavorite(userId, adId),
      transform: (_) => null,
    );

    return result.when(
      success: (_) {
        _cache.remove(adId);
        return result;
      },
      failure: (_) => result,
    );
  }

  /// Vérifie si une annonce est en favori
  /// Utilise uniquement le cache local
  /// @param userId ID de l'utilisateur
  /// @param adId ID de l'annonce à vérifier
  /// @return true si l'annonce est en favori, false sinon
  @override
  bool isFavorite(String userId, String adId) {
    return _cache.contains(adId);
  }

  /// Vide le cache local
  /// Appelé lors de la déconnexion ou en cas d'erreur
  @override
  void clearCache() {
    _cache.clear();
  }
}
