import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'user_model.g.dart';

@CopyWith()
class UserModel extends Equatable {
  final String? uid;
  final bool? isVerified;
  final String? email;
  final String? password;
  final String? displayName;

  const UserModel(
      {this.uid,
      this.email,
      this.password,
      this.displayName,
      this.isVerified});

  UserModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc,
      this.isVerified, this.password)
      : uid = doc.id,
        email = doc.data()!["email"],
        displayName = doc.data()!["displayName"];

  @override
  List<Object?> get props => [
        uid,
        isVerified,
        email,
        password,
        displayName,
      ];
}
