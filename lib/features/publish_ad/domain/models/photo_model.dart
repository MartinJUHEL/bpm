import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';

part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel(
      {required final String adId,
      @Default(null) final String? path,
      @Default("") final String name,
      @Default(null) final String? url,
      @Default(PhotoStatus.init) PhotoStatus status}) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);
}

enum PhotoStatus {
  init,
  uploading,
  uploaded,
  error;

  bool get isInit => this == PhotoStatus.init;

  bool get isUploading => this == PhotoStatus.uploading;

  bool get isUploaded => this == PhotoStatus.uploaded;

  bool get isError => this == PhotoStatus.error;
}
