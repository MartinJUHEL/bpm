import 'dart:io';

import 'package:assoshare/core/data/services/base_firebase_service.dart';
import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class StorageService extends BaseFirebaseService {
  final FirebaseStorage _storage;

  StorageService(this._storage, super.logger);

  Future<List<String>> uploadAdPhotos(List<PhotoEntity> photos, String adId) async {
    return await executeWithErrorHandling(() {
      var photoUrls = Future.wait(photos.map((photo) => _uploadAdPhoto(photo, adId)));
      return photoUrls;
    }, 'uploadAdPhotos');
  }

  /// Upload photo and return url.
  Future<String> _uploadAdPhoto(PhotoEntity photo, String adId) async {
    final destination = '$adPhotosPath/$adId/${photo.name}';
    final ref = _storage.ref(destination);
    UploadTask uploadTask = ref.putFile(File(photo.path));
    return await executeWithErrorHandling(() => uploadTask.then((res) => res.ref.getDownloadURL()), 'uploadAdPhoto');
  }

  /// Delete photos from adId.
  Future<void> deleteAdPhotos(String adId) async {
    final destination = '$adPhotosPath/$adId';
    final refs = await _storage.ref(destination).listAll();
    final deleteFutures = refs.items.map((item) {
      return _storage.ref(item.fullPath).delete();
    }).toList();
    return executeWithErrorHandling(
      () => Future.wait(deleteFutures),
      'deleteAdPhotos',
    );
  }
}

///////////////////////////////////////////////////////////////
//CONSTANTS
///////////////////////////////////////////////////////////////

const adPhotosPath = 'adPhotos';
