import 'dart:ui';

import 'package:assoshare/core/utils/number_ext.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_entity.freezed.dart';

@freezed
class AdEntity with _$AdEntity {
  const AdEntity._();

  const factory AdEntity(
      {required final String id,
      required final String title,
      required final String description,
      final double? price,
      required final AdType adType,
      required final List<String> photosUrl,
      required final CityEntity city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _AdEntity;

  String displayTypeAndPrice({Locale? locale}) {
    return switch (adType) {
      AdType.loan => tr('loan'),
      AdType.rent => '${tr('rent')} : ${price?.displayPrice(locale: locale)}',
    };
  }

  bool hasPhoto() => photosUrl.isNotEmpty;
}

enum AdType { loan, rent }
