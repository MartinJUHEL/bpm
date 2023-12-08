import 'package:bpm/publish_ad/domain/usecases/upload_photo_use_case.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPhotoUrlUseCase {
  final FirebaseStorage _storage;

  GetPhotoUrlUseCase(this._storage);

  Future<String> execute(String adId, String filename) async {
    final destination = '$adPhotosPath/$adId/$filename';
    return await _storage.ref(destination).getDownloadURL();
  }
}
