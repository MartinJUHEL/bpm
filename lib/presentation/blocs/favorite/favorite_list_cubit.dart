import 'dart:async';

import 'package:assoshare/domain/repositories/favorite_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_list_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// Cubit that manages the list of favorites with complete ad details
@injectable
class FavoriteListCubit extends Cubit<FavoriteListState> {
  final FavoriteRepository _favoriteRepository;
  final UserRepository _userRepository;
  StreamSubscription<Set<String>>? _subscription;

  FavoriteListCubit(this._favoriteRepository, this._userRepository)
      : super(const FavoriteListState.initial()) {
    _subscription = _favoriteRepository.favoriteIdsStream.listen((_) {
      loadFavorites();
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  /// Loads all favorites with complete ad details
  Future<void> loadFavorites() async {
    emit(const FavoriteListState.loading());

    final user = _userRepository.getLocalUser();
    if (user == null) {
      return;
    }

    final result = await _favoriteRepository.getFavorites(user.uid);
    result.when(
      success: (favorites) => emit(FavoriteListState.success(favorites)),
      failure: (message) => emit(const FavoriteListState.error()),
    );
  }

  /// Removes a favorite from the list and updates the repository
  Future<void> removeFavorite(String adId) async {
    final user = _userRepository.getLocalUser();
    if (user == null) {
      return;
    }

    await _favoriteRepository.removeFavorite(user.uid, adId);
    state.whenOrNull(
      success: (favorites) => emit(
        FavoriteListState.success(
          favorites.where((favorite) => favorite.ad.id != adId).toList(),
        ),
      ),
    );
  }

  /// Clears the cache and resets the state
  void clearCache() {
    _favoriteRepository.clearCache();
    emit(const FavoriteListState.initial());
  }
}
