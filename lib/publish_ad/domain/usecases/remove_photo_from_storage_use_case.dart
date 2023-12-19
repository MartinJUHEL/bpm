import 'dart:io';

import 'package:bpm/publish_ad/domain/models/photo_model.dart';
import 'package:bpm/publish_ad/domain/usecases/upload_photo_to_storage_use_case.dart';
import 'package:bpm/publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@injectable
class RemovePhotosFromStorageUseCase {
  final FirebaseStorage _storage;

  RemovePhotosFromStorageUseCase(this._storage);

  Future<void> execute(PhotoModel photo) async {
    final destination = '$adPhotosPath/${photo.adId}/${photo.name}';
    await _storage.ref(destination).delete();
  }
}
