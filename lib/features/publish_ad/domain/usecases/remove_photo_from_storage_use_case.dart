import 'package:assoshare/features/publish_ad/domain/models/photo_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import 'upload_photo_to_storage_use_case.dart';

@injectable
class RemovePhotosFromStorageUseCase {
  final FirebaseStorage _storage;

  RemovePhotosFromStorageUseCase(this._storage);

  Future<void> execute(PhotoModel photo) async {
    final destination = '$adPhotosPath/${photo.adId}/${photo.name}';
    await _storage.ref(destination).delete();
  }
}
