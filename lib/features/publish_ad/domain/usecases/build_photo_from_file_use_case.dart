import 'package:assoshare/features/publish_ad/domain/models/photo_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@injectable
class BuildPhotoFromFileUseCase {
  PhotoModel execute(XFile file, String adId) {
    String fileName = basename(file.path);
    return PhotoModel(
        adId: adId, path: file.path, name: fileName, status: PhotoStatus.init);
  }
}
