import 'package:cloud_firestore/cloud_firestore.dart';

/// Convertit une valeur dynamique (Timestamp ou DateTime) en DateTime
/// Si la valeur est null ou invalide, retourne DateTime.now()
DateTime timestampToDateTime(dynamic value) {
  if (value == null) return DateTime.now();
  if (value is Timestamp) return value.toDate();
  if (value is DateTime) return value;
  return DateTime.now();
} 