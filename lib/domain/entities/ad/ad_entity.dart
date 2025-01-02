import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_entity.freezed.dart';

@freezed
class AdEntity with _$AdEntity {
  const factory AdEntity(
      {required final String id,
      required final String title,
      required final String description,
      final int? price,
      required final AdType adType,
      required final List<String> photosUrl,
      required final CityEntity city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _AdEntity;
}

enum AdType { loan, rent }
