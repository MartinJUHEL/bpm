import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
    required String id,
    required AdEntity ad,
    required DateTime createdAt,
  }) = _FavoriteEntity;
} 