import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
    required AdEntity ad,
    required DateTime addedAt,
  }) = _FavoriteEntity;
}
