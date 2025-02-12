import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_state.freezed.dart';

@freezed
sealed class FavoriteListState with _$FavoriteListState {
  const factory FavoriteListState.initial() = FavoriteListInitial;

  const factory FavoriteListState.loading() = FavoriteListLoading;

  const factory FavoriteListState.error() = FavoriteListError;

  const factory FavoriteListState.success(List<FavoriteEntity> favorites) =
      FavoriteListSuccess;
}
