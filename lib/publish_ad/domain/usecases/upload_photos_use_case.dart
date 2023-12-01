import 'dart:io';

import 'package:bpm/publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@injectable
class UploadPhotosUseCase {
  final FirebaseStorage _storage;

  UploadPhotosUseCase(this._storage);

  Future<UploadPhotosStatus> execute(XFile photo, String adId) async {
    String fileName = basename(photo.path);
    final destination = '$_adPhotosPath/$adId/$fileName';

    try {
      final ref = _storage.ref(destination);
      await ref.putFile(File(photo.path));
      return UploadPhotosStatus.success;
    } catch (e) {
      return UploadPhotosStatus.failure;
    }
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const _adPhotosPath = 'adPhotos';
}
