part of 'upload_photos_bloc.dart';

@freezed
class UploadPhotosEvent with _$UploadPhotosEvent {
  const factory UploadPhotosEvent.started() = _Started;
  const factory UploadPhotosEvent.pickedImagesFromCamera(String adId) = _PickedImagesFromCamera;
  const factory UploadPhotosEvent.pickedImagesFromGallery(String adId) = _PickedImagesFromGallery;
  const factory UploadPhotosEvent.removedPhoto(int index) = _RemovedPhoto;
}
