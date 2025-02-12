import 'package:assoshare/domain/repositories/favorite_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'favorite_state.dart';

@injectable
class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepository _favoriteRepository;
  final UserRepository _userRepository;

  FavoriteCubit(this._favoriteRepository, this._userRepository)
      : super(const FavoriteState());

  /// Charge les favoris d'un utilisateur
  Future<void> loadFavorites() async {
    final user = _userRepository.getLocalUser();
    if (user == null) return;

    emit(state.copyWith(isLoading: true, error: null));

    final idsResult = await _favoriteRepository.getFavoriteIds(user.uid);
    await idsResult.when(
      success: (ids) async {
        final favoritesResult = await _favoriteRepository.getFavorites(user.uid);
        favoritesResult.when(
          success: (favorites) {
            emit(state.copyWith(
              favoriteIds: ids.toSet(),
              favorites: favorites,
              isLoading: false,
            ));
          },
          failure: (_) {
            emit(state.copyWith(
              isLoading: false,
              error: 'Erreur lors du chargement des favoris',
            ));
          },
        );
      },
      failure: (_) {
        emit(state.copyWith(
          isLoading: false,
          error: 'Erreur lors du chargement des favoris',
        ));
      },
    );
  }

  /// Ajoute ou supprime un favori
  Future<bool> toggleFavorite(String adId) async {
    final user = _userRepository.getLocalUser();
    if (user == null) return false;

    if (state.favoriteIds.contains(adId)) {
      final result = await _favoriteRepository.removeFavorite(user.uid, adId);
      result.when(
        success: (_) {
          emit(state.copyWith(
            favoriteIds: state.favoriteIds.difference({adId}),
            favorites: state.favorites.where((f) => f.id != adId).toList(),
          ));
        },
        failure: (_) {
          emit(state.copyWith(
            error: 'Erreur lors de la suppression du favori',
          ));
        },
      );
    } else {
      final result = await _favoriteRepository.addFavorite(user.uid, adId);
      result.when(
        success: (_) {
          emit(state.copyWith(
            favoriteIds: state.favoriteIds.union({adId}),
          ));
          // Recharger la liste complète des favoris pour avoir les détails
          loadFavorites();
        },
        failure: (_) {
          emit(state.copyWith(
            error: 'Erreur lors de l\'ajout du favori',
          ));
        },
      );
    }
    return true;
  }

  /// Vérifie si une annonce est en favori
  bool isFavorite(String adId) => state.favoriteIds.contains(adId);

  /// Vide le cache
  void clearCache() {
    _favoriteRepository.clearCache();
    emit(const FavoriteState());
  }
}
