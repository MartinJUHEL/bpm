import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

part 'photo_entity.freezed.dart';

@freezed
class PhotoEntity with _$PhotoEntity {
  const factory PhotoEntity({required final String path, required final String name}) = _PhotoEntity;

  factory PhotoEntity.fromFile(XFile file) => PhotoEntity(path: file.path, name: basename(file.path));
}
