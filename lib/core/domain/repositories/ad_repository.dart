import 'package:assoshare/core/domain/entities/ad_entity.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/features/publish_ad/domain/models/photo_entity.dart';

abstract class AdRepository {
  Future<Result<void>> postAd(AdEntity ad, List<PhotoEntity> photos);
}
