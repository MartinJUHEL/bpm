import 'dart:convert';

import 'package:assoshare/data/models/favorite/favorite_firebase_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  final testDate = DateTime(2024, 2, 12);
  final testTimestamp = Timestamp.fromDate(testDate);

  final tFavoriteFirebaseModel = FavoriteFirebaseModel(
    adId: 'test1',
    createdAt: testDate,
  );

  group('FavoriteFirebaseModel', () {

    test('fromFirestore should return a valid model from DocumentSnapshot', () {
      // Arrange
      final documentSnapshot = FakeDocumentSnapshot(
        data: {'createdAt': testTimestamp},
        id: 'test1',
      );

      // Act
      final result = FavoriteFirebaseModel.fromFirestore(documentSnapshot);

      // Assert
      expect(result, equals(tFavoriteFirebaseModel));
    });

    test('toFirestore should return a Firestore map containing proper data', () {
      // Act
      final result = tFavoriteFirebaseModel.toFirestore();

      // Assert
      expect(result, {
        'createdAt': testTimestamp,
      });
    });
  });
}

/// Classe utilitaire pour simuler un DocumentSnapshot Firestore
class FakeDocumentSnapshot implements DocumentSnapshot<Map<String, dynamic>> {
  final Map<String, dynamic> _data;
  @override
  final String id;

  FakeDocumentSnapshot({
    required Map<String, dynamic> data,
    required this.id,
  }) : _data = data;

  @override
  Map<String, dynamic>? data() => _data;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
