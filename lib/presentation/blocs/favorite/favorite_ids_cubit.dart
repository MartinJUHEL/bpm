import 'dart:async';

import 'package:assoshare/domain/repositories/favorite_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavoriteIdsCubit extends Cubit<Set<String>> {
  final FavoriteRepository _favoriteRepository;
  final UserRepository _userRepository;
  StreamSubscription<Set<String>>? _subscription;

  FavoriteIdsCubit(this._favoriteRepository, this._userRepository) : super({}) {
    _subscription = _favoriteRepository.favoriteIdsStream.listen((ids) {
      emit(ids.toSet());
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  /// Loads only favorite IDs
  /// Useful for quickly checking if an ad is favorited
  Future<void> loadFavoriteIds() async {
    final user = _userRepository.getLocalUser();
    if (user == null) return;

    final result = await _favoriteRepository.getFavoriteIds(user.uid);
    result.when(
      success: (ids) => emit(ids.toSet()),
      failure: (_) {},
    );
  }

  /// Adds or removes a favorite
  Future<bool> toggleFavorite(String adId) async {
    final user = _userRepository.getLocalUser();
    if (user == null) return false;

    if (state.contains(adId)) {
      final result = await _favoriteRepository.removeFavorite(user.uid, adId);
      result.when(
        success: (_) => emit(state.difference({adId})),
        failure: (_) {},
      );
    } else {
      final result = await _favoriteRepository.addFavorite(user.uid, adId);
      result.when(
        success: (_) => emit(state.union({adId})),
        failure: (_) {},
      );
    }
    return true;
  }

  /// Checks if an ad is favorited
  bool isFavorite(String adId) => state.contains(adId);

  /// Clears the cache
  void clearCache() {
    _favoriteRepository.clearCache();
    emit({});
  }
}
