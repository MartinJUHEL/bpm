import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/domain/repositories/favorite_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

/// Updates the favorites list based on changes in favorite IDs
/// Optimizes by only updating changed items instead of reloading everything
@lazySingleton
class UpdateFavoritesUseCase {
  final FavoriteRepository _favoriteRepository;
  final UserRepository _userRepository;

  UpdateFavoritesUseCase(this._favoriteRepository, this._userRepository);

  /// Updates favorites list based on changes in favorite IDs
  /// @param newIds New set of favorite IDs
  /// @param currentFavorites Current list of favorites
  /// @return Updated list of favorites if successful, null if user is not logged in
  Future<List<FavoriteEntity>> call(
    Set<String> newIds,
    List<FavoriteEntity> currentFavorites,
  ) async {
    final user = _userRepository.getLocalUser();
    if (user == null) return []; // Shouldn't happen.

    // Get current favorite IDs
    final currentIds = currentFavorites.map((f) => f.ad.id).toSet();

    // Find added and removed IDs
    final addedIds = newIds.difference(currentIds);
    final removedIds = currentIds.difference(newIds);

    // Handle removed favorites
    var updatedFavorites = currentFavorites;
    if (removedIds.isNotEmpty) {
      updatedFavorites = currentFavorites.where((favorite) => !removedIds.contains(favorite.ad.id)).toList();
    }

    // Handle added favorites
    if (addedIds.isNotEmpty) {
      for (final adId in addedIds) {
        final result = await _favoriteRepository.getFavorite(user.uid, adId);
        result.when(
          success: (favorite) {
            updatedFavorites = [...updatedFavorites, favorite];
          },
          failure: (_) {},
        );
      }
    }

    return updatedFavorites;
  }
}
