import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_photos_event.dart';
part 'upload_photos_state.dart';
part 'upload_photos_bloc.freezed.dart';

class UploadPhotosBloc extends Bloc<UploadPhotosEvent, UploadPhotosState> {
  UploadPhotosBloc() : super(const UploadPhotosState.initial()) {
    on<UploadPhotosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
