import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_firebase_model.freezed.dart';

part 'favorite_firebase_model.g.dart';

/// Modèle représentant un favori tel que stocké dans Firebase
/// Ne contient que la date de création
/// L'id du document est l'id de l'annonce
@freezed
class FavoriteFirebaseModel with _$FavoriteFirebaseModel {
  const FavoriteFirebaseModel._();

  const factory FavoriteFirebaseModel({
    required String adId,
    required DateTime createdAt,
  }) = _FavoriteFirebaseModel;

  factory FavoriteFirebaseModel.fromJson(Map<String, dynamic> json) => _$FavoriteFirebaseModelFromJson(json);

  /// Crée un modèle à partir d'un DocumentSnapshot Firestore
  factory FavoriteFirebaseModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data()!;
    return FavoriteFirebaseModel(
      adId: doc.id,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
    );
  }

  /// Convertit le modèle en Map pour Firestore
  Map<String, dynamic> toFirestore() => {
        'createdAt': Timestamp.fromDate(createdAt),
      };
}
