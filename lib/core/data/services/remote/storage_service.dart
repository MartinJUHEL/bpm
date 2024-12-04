import 'dart:io';

import 'package:assoshare/features/publish_ad/domain/models/photo_entity.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class StorageService {
  final FirebaseStorage _storage;

  StorageService(this._storage);

  Future<List<String>> uploadAdPhotos(List<PhotoEntity> photos, String adId) async {
    var photoUrls = await Future.wait(photos.map((photo) => _uploadAdPhoto(photo, adId)));
    return photoUrls;
  }

  /// Upload photo and return url.
  Future<String> _uploadAdPhoto(PhotoEntity photo, String adId) async {
    final destination = '$adPhotosPath/$adId}/${photo.name}';
    final ref = _storage.ref(destination);
    await ref.putFile(File(photo.path));
    return await ref.getDownloadURL();
  }
}

///////////////////////////////////////////////////////////////
//CONSTANTS
///////////////////////////////////////////////////////////////

const adPhotosPath = 'adPhotos';
