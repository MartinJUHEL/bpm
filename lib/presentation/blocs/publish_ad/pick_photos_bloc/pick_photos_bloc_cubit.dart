import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:assoshare/domain/usecases/publish_ad/pick_photo_from_camera_use_case.dart';
import 'package:assoshare/domain/usecases/publish_ad/pick_photos_from_gallery_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'pick_photos_bloc_cubit.freezed.dart';
part 'pick_photos_bloc_state.dart';

@injectable
class PickPhotosBlocCubit extends Cubit<PickPhotosBlocState> {
  final PickPhotoFromCameraUseCase _pickPhotoFromCameraUseCase;
  final PickPhotosFromGalleryUseCase _pickPhotosFromGalleryUseCase;

  PickPhotosBlocCubit(this._pickPhotoFromCameraUseCase, this._pickPhotosFromGalleryUseCase)
      : super(const PickPhotosBlocState());

  void onPickedImagesFromCamera() async {
    final XFile? file = await _pickPhotoFromCameraUseCase.execute();
    if (file == null) return;
    final List<PhotoEntity> updatedList = [...state.photos, PhotoEntity.fromFile(file)];
    emit(state.copyWith(photos: updatedList));
  }

  void onPickedImagesFromGallery() async {
    final List<XFile> files = await _pickPhotosFromGalleryUseCase.execute();
    if (files.isEmpty) return;
    final List<PhotoEntity> updatedList = [...state.photos, ...files.map((file) => PhotoEntity.fromFile(file))];
    emit(state.copyWith(photos: updatedList));
  }

  void onImageRemoved(PhotoEntity photo) async {
    final List<PhotoEntity> updatedList = List.from(state.photos)..remove(photo);
    emit(state.copyWith(photos: updatedList));
  }
}
