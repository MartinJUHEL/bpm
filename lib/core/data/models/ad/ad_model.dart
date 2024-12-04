import 'package:assoshare/core/data/models/city/city_model.dart';
import 'package:assoshare/core/domain/entities/ad_entity.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_model.freezed.dart';
part 'ad_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true, includeIfNull: true)
class AdModel with _$AdModel {
  const AdModel._();

  const factory AdModel(
      {required final String title,
      required final String description,
      final int? price,
      required final String adType,
      required final List<String> photosUrl,
      required final CityModel city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _AdEntity;

  factory AdModel.fromJson(Map<String, Object?> json) => _$AdModelFromJson(json);

  factory AdModel.fromEntity(AdEntity entity) => AdModel(
      title: entity.title,
      description: entity.description,
      adType: entity.adType.name,
      photosUrl: entity.photosUrl,
      city: CityModel.fromEntity(entity.city),
      renterId: entity.renterId,
      renterName: entity.renterName,
      creationDate: entity.creationDate);

  AdEntity toEntity() => AdEntity(
      title: title,
      description: description,
      adType: adTypeFromString(adType),
      photosUrl: photosUrl,
      city: city.toEntity(),
      renterId: renterId,
      renterName: renterName,
      creationDate: creationDate);

  AdType adTypeFromString(String value) => AdType.values.firstWhereOrNull((type) => type.name == value) ?? AdType.loan;
}
