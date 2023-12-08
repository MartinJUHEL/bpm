import 'dart:io';

import 'package:bpm/publish_ad/domain/models/photo_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@injectable
class UploadPhotosUseCase {
  final FirebaseStorage _storage;

  UploadPhotosUseCase(this._storage);

  Future<PhotoModel> execute(PhotoModel photo) async {
    if (photo.path != null) {
      final destination = '$adPhotosPath/${photo.adId}/${photo.name}';
      try {
        final ref = _storage.ref(destination);
        await ref.putFile(File(photo.path!));
        return photo.copyWith(status: PhotoStatus.uploaded);
      } catch (e) {
        return photo.copyWith(name: photo.name, status: PhotoStatus.error);
      }
    } else {
      return photo.copyWith(status: PhotoStatus.error);
    }
  }
}

///////////////////////////////////////////////////////////////
//CONSTANTS
///////////////////////////////////////////////////////////////

const adPhotosPath = 'adPhotos';
