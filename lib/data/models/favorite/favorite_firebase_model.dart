import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_firebase_model.freezed.dart';
part 'favorite_firebase_model.g.dart';

/// Modèle représentant un favori tel que stocké dans Firebase
/// Ne contient que les données de base du favori (id et date)
/// sans les détails de l'annonce
@freezed
class FavoriteFirebaseModel with _$FavoriteFirebaseModel {
  const FavoriteFirebaseModel._();

  const factory FavoriteFirebaseModel({
    required String id,
    required DateTime createdAt,
  }) = _FavoriteFirebaseModel;

  factory FavoriteFirebaseModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFirebaseModelFromJson(json);

  /// Crée un modèle à partir d'un DocumentSnapshot Firestore
  factory FavoriteFirebaseModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data()!;
    return FavoriteFirebaseModel(
      id: doc.id,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
    );
  }

  /// Convertit le modèle en Map pour Firestore
  Map<String, dynamic> toFirestore() => {
        'createdAt': Timestamp.fromDate(createdAt),
      };
} 