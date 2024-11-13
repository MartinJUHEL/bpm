part of 'upload_photos_bloc.dart';

@freezed
class UploadPhotosState with _$UploadPhotosState {
  const factory UploadPhotosState({
    @Default(CommonStatus.initial) CommonStatus status,
    @Default([]) List<PhotoModel> photos,
  }) = _UploadPhotosState;
}