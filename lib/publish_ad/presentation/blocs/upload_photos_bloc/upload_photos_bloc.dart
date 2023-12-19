import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/models/photo_model.dart';
import 'package:bpm/publish_ad/domain/usecases/build_photo_from_file_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/remove_photo_from_storage_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/upload_photo_to_storage_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'upload_photos_event.dart';

part 'upload_photos_state.dart';

part 'upload_photos_bloc.freezed.dart';

@injectable
class UploadPhotosBloc extends Bloc<UploadPhotosEvent, UploadPhotosState> {
  final UploadPhotosToStorageUseCase _uploadPhotosUseCase;
  final PickPhotoFromCameraUseCase _pickPhotoFromCameraUseCase;
  final PickPhotosFromGalleryUseCase _pickPhotosFromGalleryUseCase;
  final RemovePhotosFromStorageUseCase _removePhotosUseCase;
  final BuildPhotoFromFileUseCase _buildPhotoFromFileUseCase;

  final List<PhotoModel> _photos = [];

  UploadPhotosBloc(
    this._uploadPhotosUseCase,
    this._pickPhotoFromCameraUseCase,
    this._pickPhotosFromGalleryUseCase,
    this._removePhotosUseCase,
    this._buildPhotoFromFileUseCase,
  ) : super(const UploadPhotosState()) {
    on<UploadPhotosEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        started: () {},
        pickedImagesFromCamera: (String adId) =>
            _onPickedImagesFromCamera(emit, adId),
        pickedImagesFromGallery: (String adId) =>
            _onPickedImagesFromGallery(emit, adId),
        removedPhoto: (int index) => _onRemovedPhoto(emit, index),
      );
    });
  }

  _onPickedImagesFromCamera(
      Emitter<UploadPhotosState> emit, String adId) async {
    try {
      emit(state.copyWith(status: UploadPhotosStatus.loading));
      final XFile? file = await _pickPhotoFromCameraUseCase.execute();
      if (file != null) {
        await _uploadPhoto(file, adId, emit);
        emit(state.copyWith(
            status: UploadPhotosStatus.success, photos: List.of(_photos)));
      } else {
        emit(state.copyWith(status: UploadPhotosStatus.failure));
      }
    } catch (e) {
      emit(state.copyWith(status: UploadPhotosStatus.failure));
    }
  }

  _onPickedImagesFromGallery(
      Emitter<UploadPhotosState> emit, String adId) async {
    try {
      emit(state.copyWith(status: UploadPhotosStatus.loading));
      final List<XFile> files = await _pickPhotosFromGalleryUseCase.execute();
      if (files.isNotEmpty) {
        await Future.wait(files.map((file) => _uploadPhoto(file, adId, emit)));
        emit(state.copyWith(
            status: UploadPhotosStatus.success, photos: List.of(_photos)));
      } else {
        emit(state.copyWith(status: UploadPhotosStatus.failure));
      }
    } catch (e) {
      emit(state.copyWith(status: UploadPhotosStatus.failure));
    }
  }

  _onRemovedPhoto(Emitter<UploadPhotosState> emit, int index) async {
    try {
      PhotoModel photo = _photos[index];
      await _removePhotosUseCase.execute(photo);
      _photos.removeAt(index);
      emit(state.copyWith(photos: List.of(_photos)));
    } catch (e) {
      emit(state.copyWith(status: UploadPhotosStatus.failure));
    }
  }

  _uploadPhoto(
    XFile file,
    String adId,
    Emitter<UploadPhotosState> emit,
  ) async {
    final PhotoModel photo = _buildPhotoFromFileUseCase.execute(file, adId);
    _photos.add(photo.copyWith(status: PhotoStatus.uploading));
    emit(state.copyWith(photos: _photos));
    PhotoModel uploadedPhoto = await _uploadPhotosUseCase.execute(photo);
    _photos
      ..removeWhere((element) => element.name == uploadedPhoto.name)
      ..add(uploadedPhoto);
  }
}
