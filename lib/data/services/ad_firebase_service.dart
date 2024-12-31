import 'package:assoshare/core/data/services/base_firebase_service.dart';
import 'package:assoshare/data/models/ad/ad_model.dart';
import 'package:assoshare/data/models/ad/post_ad_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
final class AdFirebaseService extends BaseFirebaseService {
  final FirebaseFirestore _firestore;

  AdFirebaseService(this._firestore, super._logger);

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

  Future<void> deleteAd(String adId) async {
    return await executeWithErrorHandling(() => _firestore.collection(_adCollection).doc(adId).delete(), 'deleteAd');
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const _adCollection = 'ads';
const _photosUrlField = 'photosUrl';
const _renterIdField = 'renterId';
const _idField = 'id';
