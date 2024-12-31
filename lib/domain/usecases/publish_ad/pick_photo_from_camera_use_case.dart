import 'package:assoshare/domain/usecases/publish_ad/pick_photos_from_gallery_use_case.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class PickPhotoFromCameraUseCase {
  Future<XFile?> execute() {
    final ImagePicker picker = ImagePicker();
    return picker.pickImage(source: ImageSource.camera, imageQuality: imageQuality);
  }
}
