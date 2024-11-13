import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class PickPhotoFromCameraUseCase {
  Future<XFile?> execute() {
    final ImagePicker picker = ImagePicker();
    return picker.pickImage(source: ImageSource.camera);
  }
}
