import 'package:assoshare/data/models/ad/ad_model.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  const FavoriteModel._();

  const factory FavoriteModel({
    required String id,
    required AdModel ad,
    required DateTime createdAt,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);

  FavoriteEntity toEntity() => FavoriteEntity(
        id: id,
        ad: ad.toEntity(),
        createdAt: createdAt,
      );
}
