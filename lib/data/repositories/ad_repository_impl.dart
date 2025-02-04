import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/data/models/ad/post_ad_model.dart';
import 'package:assoshare/data/services/ad_firebase_service.dart';
import 'package:assoshare/data/services/search_ad_service.dart';
import 'package:assoshare/data/services/storage_service.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/ad/post_ad_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AdRepository)
final class AdRepositoryImpl extends BaseRemoteRepository implements AdRepository {
  final AdFirebaseService _adFirebaseService;
  final StorageService _storageService;
  final SearchAdService _searchAdService;

  AdRepositoryImpl(super.genericErrorTrigger, super.connectivityInfo, super.logger, this._adFirebaseService,
      this._storageService, this._searchAdService);

  @override
  Future<Result<void>> postAd(PostAdEntity postAd) async {
    // 1. Post ad and get id.
    final postAdResult = await safeCall(
      action: () => _adFirebaseService.postAd(PostAdModel.fromEntity(postAd)),
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
      action: () => _storageService.uploadAdPhotos(postAd.photos, adId),
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

  @override
  Future<Result<List<AdEntity>>> fetchAdsByUserId(String uid) {
    return safeCall(
      action: () => _adFirebaseService.getAdByUserId(uid),
      transform: (ads) => ads.map((adModel) => adModel.toEntity()).toList(),
    );
  }

  @override
  Future<Result<void>> deleteAd(String adId) async {
    // Delete photo from storage.
    Future<Result<void>> deletePhotoFuture =
        safeCall(action: () => _storageService.deleteAdPhotos(adId), transform: (_) => {});

    // Delete ad from api.
    Future<Result<void>> deleteAdResultFuture =
        safeCall(action: () => _adFirebaseService.deleteAd(adId), transform: (_) => {});

    // Proceed in parallel.
    final (deletePhotoResult, deleteAdResult) = await (deletePhotoFuture, deleteAdResultFuture).wait;

    // If error when deleting photos.
    if (deletePhotoResult is IsFailure) {
      return deletePhotoResult;
    }

    // If error when deleting ad.
    if (deleteAdResult is IsFailure) {
      return deleteAdResult;
    }

    return const Result.success(null);
  }

  @override
  Future<Result<List<AdEntity>>> searchAd(String query, int page, FilterEntity filter) {
    return safeCall(
        action: () => _searchAdService.searchAd(query, page, filter),
        transform: (ads) => ads.map((soughtAdModel) => soughtAdModel.toEntity()).toList());
  }

  @override
  Future<Result<List<String>>> getAdSuggestions(String query) {
    return safeCall(
        action: () => _searchAdService.getSuggestions(query),
        transform: (ads) => ads.map((soughtAdModel) => soughtAdModel.title).toList());
  }
}
