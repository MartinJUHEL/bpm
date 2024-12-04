import 'package:assoshare/core/data/models/ad/ad_model.dart';
import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/data/services/remote/ad_firebase_service.dart';
import 'package:assoshare/core/data/services/remote/storage_service.dart';
import 'package:assoshare/core/domain/entities/ad_entity.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/core/domain/repositories/ad_repository.dart';
import 'package:assoshare/features/publish_ad/domain/models/photo_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AdRepository)
final class AdRepositoryImpl extends BaseRepository implements AdRepository {
  final AdFirebaseService _adFirebaseService;
  final StorageService _storageService;

  AdRepositoryImpl(super.genericErrorTrigger, super.connectivityInfo, this._adFirebaseService, this._storageService);

  @override
  Future<Result<void>> postAd(AdEntity ad, List<PhotoEntity> photos) async {
    // 1. Post ad and get id.
    final postAdResult = await safeCall(
      action: () => _adFirebaseService.postAd(AdModel.fromEntity(ad)),
      transform: (adId) => adId,
    );

    // 2. Handle potential failure.
    if (postAdResult is IsFailure) {
      return postAdResult;
    }

    // 3. Extract adId if successful.
    final adId = (postAdResult as IsSuccess).data;

    // 4. Upload photos.
    final uploadPhotosResult = await safeCall(
      action: () => _storageService.uploadAdPhotos(photos, adId),
      transform: (urls) => urls,
    );

    // 5. Handle potential failure.
    if (uploadPhotosResult is IsFailure) {
      return uploadPhotosResult;
    }

    // 6. Extract URLs if successful.
    final urls = (uploadPhotosResult as IsSuccess).data;

    // 7. Update ad with photo URLs.
    return safeCall(
      action: () => _adFirebaseService.updatePhotosUrl(urls, adId),
      transform: (_) => {},
    );
  }
}
