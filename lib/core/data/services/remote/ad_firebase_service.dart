import 'package:assoshare/core/data/models/ad/ad_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
final class AdFirebaseService {
  final FirebaseFirestore _firestore;

  AdFirebaseService(this._firestore);

  /// Post ad and get generated ad id.
  Future<String> postAd(AdModel ad) async {
    DocumentReference docRef = await _firestore.collection(_adCollection).add(ad.toJson());
    return docRef.id;
  }

  Future<void> updatePhotosUrl(List<String> urls, String adId) async {
    _firestore.collection(_adCollection).doc(adId).update({_photosUrlField: urls});
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const _adCollection = 'ads';
const _photosUrlField = 'photosUrl';
