import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';

abstract class FavoriteRepository {
  Future<Result<List<String>>> getFavoriteIds(String userId);
  Future<Result<List<FavoriteEntity>>> getFavorites(String userId);
  Future<Result<void>> addFavorite(String userId, String adId);
  Future<Result<void>> removeFavorite(String userId, String adId);
  void clearCache();

  /// Stream qui émet à chaque changement du cache des favoris
  Stream<Set<String>> get favoriteIdsStream;
}
