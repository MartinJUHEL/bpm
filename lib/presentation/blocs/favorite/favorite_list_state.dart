import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_state.freezed.dart';

@freezed
class FavoriteListState with _$FavoriteListState {
  const factory FavoriteListState.initial() = _Initial;
  const factory FavoriteListState.loading() = _Loading;
  const factory FavoriteListState.error() = _Error;
  const factory FavoriteListState.success(List<FavoriteEntity> favorites) = _Success;
}
