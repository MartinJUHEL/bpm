import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default({}) Set<String> favoriteIds,
    @Default([]) List<FavoriteEntity> favorites,
    @Default(false) bool isLoading,
    String? error,
  }) = _FavoriteState;
} 