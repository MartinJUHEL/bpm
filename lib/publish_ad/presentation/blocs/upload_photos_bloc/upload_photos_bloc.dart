import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/models/photo_model.dart';
import 'package:bpm/publish_ad/domain/usecases/build_photo_from_file_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/get_photo_url_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/remove_photo_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/upload_photo_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'upload_photos_event.dart';

part 'upload_photos_state.dart';

part 'upload_photos_bloc.freezed.dart';

@injectable
class UploadPhotosBloc extends Bloc<UploadPhotosEvent, UploadPhotosState> {
  final UploadPhotosUseCase _uploadPhotosUseCase;
  final PickPhotoFromCameraUseCase _pickPhotoFromCameraUseCase;
  final PickPhotosFromGalleryUseCase _pickPhotosFromGalleryUseCase;
  final RemovePhotosUseCase _removePhotosUseCase;
  final BuildPhotoFromFileUseCase _buildPhotoFromFileUseCase;
  final GetPhotoUrlUseCase _getPhotoUrlUseCase;

  final List<PhotoModel> _photos = [];

  UploadPhotosBloc(
      this._uploadPhotosUseCase,
      this._pickPhotoFromCameraUseCase,
      this._pickPhotosFromGalleryUseCase,
      this._removePhotosUseCase,
      this._buildPhotoFromFileUseCase,
      this._getPhotoUrlUseCase)
      : super(const UploadPhotosState()) {
    on<UploadPhotosEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        started: () {},
        pickedImagesFromCamera: (String adId) =>
            _onPickedImagesFromCamera(emit, adId),
        pickedImagesFromGallery: (String adId) =>
            _onPickedImagesFromGallery(emit, adId),
        removedPhoto: (PhotoModel photo) => _onRemovedPhoto(emit, photo),
      );
    });
  }

  _onPickedImagesFromCamera(
      Emitter<UploadPhotosState> emit, String adId) async {
    try {
      emit(state.copyWith(status: UploadPhotosStatus.loading));
      final XFile? file = await _pickPhotoFromCameraUseCase.execute();
      if (file != null) {
        final PhotoModel photo = _buildPhotoFromFileUseCase.execute(file, adId);
        _photos.add(photo.copyWith(status: PhotoStatus.uploading));
        emit(state.copyWith(photos: _photos));
        PhotoModel uploadedPhoto = await _uploadPhotosUseCase.execute(photo);
        String url = await _getPhotoUrlUseCase.execute(adId, photo.name);
        uploadedPhoto = uploadedPhoto.copyWith(url: url);
        _photos
          ..removeLast()
          ..add(uploadedPhoto);
        emit(state.copyWith(
            status: UploadPhotosStatus.failure, photos: List.of(_photos)));
      } else {
        emit(state.copyWith(status: UploadPhotosStatus.failure));
      }
    } catch (e) {
      logger.e('PROBLEME');
      emit(state.copyWith(status: UploadPhotosStatus.failure));
    }
  }

  _onPickedImagesFromGallery(
      Emitter<UploadPhotosState> emit, String adId) async {
    /*  final List<XFile> file = await _pickPhotosFromGalleryUseCase.execute();
    if (photo.isNotEmpty) {
      //todo gérer l'upload de plusieurs photos et l'affichage
      final UploadPhotosStatus status =
          await _uploadPhotosUseCase.execute(photo.first);
      emit(state.copyWith(status: status, photos: [photo.first]));
    }*/
  }

  _onRemovedPhoto(Emitter<UploadPhotosState> emit, PhotoModel photo) async {
    try {
      await _removePhotosUseCase.execute(photo);
      _photos.remove(photo);
      emit(state.copyWith(photos: List.of(_photos)));
    } catch (e) {
      //todo error case
    }
  }
}
