import 'package:assoshare/data/models/city/city_model.dart';
import 'package:assoshare/domain/entities/ad/post_ad_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_ad_model.freezed.dart';
part 'post_ad_model.g.dart';


@freezed
class PostAdModel with _$PostAdModel {
  const PostAdModel._();

  const factory PostAdModel(
      {
      required final String title,
      required final String description,
      final int? price,
      required final String adType,
      required final CityModel city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _PostAdModel;

  factory PostAdModel.fromJson(Map<String, Object?> json) => _$PostAdModelFromJson(json);

  factory PostAdModel.fromEntity(PostAdEntity entity) => PostAdModel(
      title: entity.title,
      description: entity.description,
      adType: entity.adType.name,
      city: CityModel.fromEntity(entity.city),
      renterId: entity.renterId,
      renterName: entity.renterName,
      creationDate: entity.creationDate);

}
