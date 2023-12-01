part of 'upload_photos_bloc.dart';

@freezed
class UploadPhotosEvent with _$UploadPhotosEvent {
  const factory UploadPhotosEvent.started() = _Started;
  const factory UploadPhotosEvent.pickedImagesFromCamera() = _PickedImagesFromCamera;
  const factory UploadPhotosEvent.pickedImagesFromGallery() = _PickedImagesFromGallery;
}
