import 'package:assoshare/data/models/favorite/favorite_firebase_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

/// Service qui gère les interactions avec la collection Favorites dans Firebase.
/// Structure de la base de données:
/// /favorites/{userId}/ads/{adId}
///   - createdAt: Timestamp
@lazySingleton
class FavoriteFirebaseService {
  final FirebaseFirestore _firestore;

  FavoriteFirebaseService(this._firestore);

  /// Retourne la référence à la collection des favoris d'un utilisateur
  /// Structure: /favorites/{userId}/ads/
  CollectionReference<Map<String, dynamic>> _getFavoritesCollection(
          String userId) =>
      _firestore
          .collection(_favoritesCollection)
          .doc(userId)
          .collection(_adsCollection);

  /// Récupère tous les favoris d'un utilisateur
  /// @param userId ID de l'utilisateur
  /// @return Liste des favoris avec leur date de création
  Future<List<FavoriteFirebaseModel>> getFavorites(String userId) async {
    final snapshot = await _getFavoritesCollection(userId).get();
    return snapshot.docs
        .map((doc) => FavoriteFirebaseModel.fromFirestore(doc))
        .toList();
  }

  /// Ajoute une annonce aux favoris d'un utilisateur
  /// @param userId ID de l'utilisateur
  /// @param adId ID de l'annonce à ajouter
  /// Le document est créé avec l'ID de l'annonce et un timestamp serveur
  Future<void> addFavorite(String userId, String adId) async {
    final favorite = FavoriteFirebaseModel(
      id: adId,
      createdAt: DateTime.now(),
    );
    await _getFavoritesCollection(userId)
        .doc(adId)
        .set(favorite.toFirestore());
  }

  /// Supprime une annonce des favoris d'un utilisateur
  /// @param userId ID de l'utilisateur
  /// @param adId ID de l'annonce à supprimer
  Future<void> removeFavorite(String userId, String adId) async {
    await _getFavoritesCollection(userId).doc(adId).delete();
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

/// Nom de la collection racine des favoris
const _favoritesCollection = 'favorites';

/// Nom de la sous-collection contenant les annonces favorites
const _adsCollection = 'ads';
