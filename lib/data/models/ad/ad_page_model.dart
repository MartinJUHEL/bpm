import 'package:assoshare/data/models/ad/sought_ad_model.dart';
import 'package:assoshare/domain/entities/ad/ads_page_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_page_model.freezed.dart';

/// Model used for pagination with Algolia.
@freezed
class AdPageModel with _$AdPageModel {
  const AdPageModel._();

  const factory AdPageModel({required final List<SoughtAdModel> ads, required final int total}) = _AdPageModel;

  AdsPageEntity toEntity() => AdsPageEntity(ads: ads.map((ad) => ad.toEntity()).toList(), total: total);
}
