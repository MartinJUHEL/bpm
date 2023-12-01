part of 'upload_photos_bloc.dart';

@freezed
class UploadPhotosState with _$UploadPhotosState {
  const factory UploadPhotosState({
    @Default(UploadPhotosStatus.initial) UploadPhotosStatus status,
    @Default([]) List<XFile> photos,
  }) = _UploadPhotosState;
}

enum UploadPhotosStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == UploadPhotosStatus.initial;

  bool get isLoading => this == UploadPhotosStatus.loading;

  bool get isSuccess => this == UploadPhotosStatus.success;

  bool get isFailure => this == UploadPhotosStatus.failure;
}
