import 'package:assoshare/core/data/services/base_firebase_service.dart';
import 'package:assoshare/data/models/ad/ad_model.dart';
import 'package:assoshare/data/models/ad/post_ad_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
final class AdFirebaseService extends BaseFirebaseService {
  final FirebaseFirestore _firestore;

  AdFirebaseService(this._firestore, super._logger);

  static const _adCollection = 'ads';
  static const _photosUrlField = 'photosUrl';
  static const _renterIdField = 'renterId';
  static const _idField = 'id';

  /// Post ad and get generated ad id.
  Future<String> postAd(PostAdModel ad) async {
    DocumentReference docRef =
        await executeWithErrorHandling(() => _firestore.collection(_adCollection).add(ad.toJson()), 'postAd');
    final String id = docRef.id;
    docRef.update({_idField: id});
    return id;
  }

  Future<void> updatePhotosUrl(List<String> urls, String adId) async {
    return executeWithErrorHandling(
        () => _firestore.collection(_adCollection).doc(adId).update({_photosUrlField: urls}), 'updatePhotosUrl');
  }

  Future<List<AdModel>> getAdByUserId(String uid) async {
    final doc = await executeWithErrorHandling(
        () => _firestore.collection(_adCollection).where(_renterIdField, isEqualTo: uid).get(), 'getAdByUserId');
    return doc.docs.map((query) => AdModel.fromJson(query.data())).toList();
  }

  /// Supprime une annonce
  Future<void> deleteAd(String adId) async {
    return await executeWithErrorHandling(() => _firestore.collection(_adCollection).doc(adId).delete(), 'deleteAd');
  }

  /// Récupère une annonce par son ID
  /// @param adId ID de l'annonce à récupérer
  Future<List<AdModel>> getAdByIds(List<String> adIds) async {
    return await executeWithErrorHandling(() async {
      final doc = await _firestore.collection(_adCollection).where(FieldPath.documentId, whereIn: adIds).get();
      return doc.docs.map((query) => AdModel.fromJson(query.data())).toList();
    }, 'getAdByIds');
  }

  /// Retrieves a single ad by its ID
  /// @param adId ID of the ad to retrieve
  /// @return The ad model
  Future<AdModel> getAd(String adId) async {
    return executeWithErrorHandling(() async {
      final doc = await _firestore.collection(_adCollection).doc(adId).get();
      return AdModel.fromJson(doc.data()!);
    }, 'getAd');
  }
}
