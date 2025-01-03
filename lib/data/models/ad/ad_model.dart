import 'package:assoshare/data/models/city/city_model.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_model.freezed.dart';
part 'ad_model.g.dart';

@freezed
class AdModel with _$AdModel {
  const AdModel._();

  const factory AdModel(
      {required final String id,
      required final String title,
      required final String description,
      final double? price,
      required final String adType,
      @Default([]) final List<String> photosUrl,
      required final CityModel city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _AdEntity;

  factory AdModel.fromJson(Map<String, Object?> json) => _$AdModelFromJson(json);

  AdEntity toEntity() => AdEntity(
      id: id,
      title: title,
      description: description,
      adType: adTypeFromString(adType),
      price: price,
      photosUrl: photosUrl,
      city: city.toEntity(),
      renterId: renterId,
      renterName: renterName,
      creationDate: creationDate);

  AdType adTypeFromString(String value) => AdType.values.firstWhereOrNull((type) => type.name == value) ?? AdType.loan;
}
