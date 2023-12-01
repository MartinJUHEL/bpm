import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class PickPhotosFromGalleryUseCase {
  Future<List<XFile>> execute() {
    final ImagePicker picker = ImagePicker();
    return picker.pickMultiImage();
  }
}
