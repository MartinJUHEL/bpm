import 'package:assoshare/data/models/favorite/favorite_firebase_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

/// Service that handles interactions with the Favorites collection in Firebase.
/// Database structure:
/// /favorites/{userId}/ads/{adId}
///   - createdAt: Timestamp
@lazySingleton
class FavoriteFirebaseService {
  final FirebaseFirestore _firestore;

  FavoriteFirebaseService(this._firestore);

  /// Returns reference to user's favorites collection
  /// Structure: /favorites/{userId}/ads/
  CollectionReference<Map<String, dynamic>> _getFavoritesCollection(
          String userId) =>
      _firestore
          .collection(_favoritesCollection)
          .doc(userId)
          .collection(_adsCollection);

  /// Retrieves all favorites for a user
  /// @param userId User ID
  /// @return List of favorites with their creation date
  Future<List<FavoriteFirebaseModel>> getFavorites(String userId) async {
    final snapshot = await _getFavoritesCollection(userId).get();
    return snapshot.docs
        .map((doc) => FavoriteFirebaseModel.fromFirestore(doc))
        .toList();
  }

  /// Retrieves a specific favorite
  /// @param userId User ID
  /// @param adId ID of the ad to retrieve
  /// @return The favorite with its creation date
  Future<FavoriteFirebaseModel> getFavorite(String userId, String adId) async {
    final doc = await _getFavoritesCollection(userId).doc(adId).get();
    return FavoriteFirebaseModel.fromFirestore(doc);
  }

  /// Adds an ad to user's favorites
  /// @param userId User ID
  /// @param adId ID of the ad to add
  /// Document is created with ad ID and server timestamp
  Future<void> addFavorite(String userId, String adId) async {
    final favorite = FavoriteFirebaseModel(
      adId: adId,
      createdAt: DateTime.now(),
    );
    await _getFavoritesCollection(userId).doc(adId).set(favorite.toFirestore());
  }

  /// Removes an ad from user's favorites
  /// @param userId User ID
  /// @param adId ID of the ad to remove
  Future<void> removeFavorite(String userId, String adId) async {
    await _getFavoritesCollection(userId).doc(adId).delete();
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

/// Root collection name for favorites
const _favoritesCollection = 'favorites';

/// Sub-collection name containing favorite ads
const _adsCollection = 'ads';
