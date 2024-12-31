import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_ad_entity.freezed.dart';

@freezed
class PostAdEntity with _$PostAdEntity {
  const factory PostAdEntity(
      {required final String title,
      required final String description,
      final int? price,
      required final AdType adType,
      required final List<PhotoEntity> photos,
      required final CityEntity city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _PostAdEntity;
}
