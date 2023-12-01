import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/publish_ad/domain/usecases/upload_photos_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'upload_photos_event.dart';

part 'upload_photos_state.dart';

part 'upload_photos_bloc.freezed.dart';

@injectable
class UploadPhotosBloc extends Bloc<UploadPhotosEvent, UploadPhotosState> {
  final UploadPhotosUseCase _uploadPhotosUseCase;

  UploadPhotosBloc(this._uploadPhotosUseCase)
      : super(const UploadPhotosState()) {
    on<UploadPhotosEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        started: () => {},
        pickedImagesFromCamera: () => _onPickedImagesFromCamera(emit),
        pickedImagesFromGallery: () => _onPickedImagesFromGallery(emit),
      );
    });
  }

  _onPickedImagesFromCamera(Emitter<UploadPhotosState> emit) async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      emit(state.copyWith(status: UploadPhotosStatus.loading));
      final UploadPhotosStatus status =
          await _uploadPhotosUseCase.execute(photo, 'test');
      emit(state.copyWith(status: status,photos: [photo]));
    }
  }

  _onPickedImagesFromGallery(Emitter<UploadPhotosState> emit) {}
}
