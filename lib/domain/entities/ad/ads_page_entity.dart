import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_page_entity.freezed.dart';

@freezed
class AdsPageEntity with _$AdsPageEntity {
  const AdsPageEntity._();

  const factory AdsPageEntity({
    required final List<AdEntity> ads,
    required final int total
  }) = _AdsPageEntity;
}
