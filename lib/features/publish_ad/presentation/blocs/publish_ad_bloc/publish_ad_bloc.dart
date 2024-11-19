import 'dart:async';

import 'package:assoshare/core/domain/entities/city_model.dart';
import 'package:assoshare/core/domain/entities/common_status.dart';
import 'package:assoshare/features/publish_ad/domain/models/photo_model.dart';
import 'package:assoshare/features/publish_ad/domain/usecases/is_ad_description_valid_use_case.dart';
import 'package:assoshare/features/publish_ad/domain/usecases/is_ad_title_valid_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'publish_ad_bloc.freezed.dart';
part 'publish_ad_event.dart';
part 'publish_ad_state.dart';

@injectable
class PublishAdBloc extends Bloc<PublishAdEvent, PublishAdState> {
  final IsAdTitleValidUseCase _isAdTitleValidUseCase;
  final IsAdDescriptionValidUseCase _isAdDescriptionValidUseCase;

  PublishAdBloc(this._isAdTitleValidUseCase, this._isAdDescriptionValidUseCase)
      : super(const PublishAdState()) {
    on<PublishAdEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
          started: () {},
          movedToNextPage: () => _onMovedToNextPage(emit),
          movedToPreviousPage: () => _onMovedToPreviousPage(emit),
          titleChanged: (String title) => _onTitleChanged(title, emit),
          descriptionChanged: (String description) =>
              _onDescriptionChanged(description, emit),
          savedPhotos: (List<PhotoModel> photos) =>
              _onSavedPhotos(emit, photos),
          citySaved: (CityModel city) => _onCitySaved(emit, city),
          adPublished: () => _onAdPublished(emit));
    });
  }

  void _onMovedToNextPage(Emitter<PublishAdState> emit) {
    emit(state.copyWith(pageIndex: state.pageIndex + 1));
  }

  void _onMovedToPreviousPage(Emitter<PublishAdState> emit) {
    emit(state.copyWith(pageIndex: state.pageIndex - 1));
  }

  void _onTitleChanged(String newTitle, Emitter<PublishAdState> emit) {
    emit(state.copyWith(
        title: newTitle,
        isTitleValid: _isAdTitleValidUseCase.execute(newTitle)));
  }

  void _onDescriptionChanged(
      String newDescription, Emitter<PublishAdState> emit) {
    emit(state.copyWith(
        description: newDescription,
        isDescriptionValid:
            _isAdDescriptionValidUseCase.execute(newDescription)));
  }

  void _onSavedPhotos(Emitter<PublishAdState> emit, List<PhotoModel> photos) {
    emit(state.copyWith(photos: photos, pageIndex: state.pageIndex + 1));
  }

  void _onCitySaved(Emitter<PublishAdState> emit, CityModel city) {
    //todo remove status
    emit(state.copyWith(city: city, status: CommonStatus.success));
  }

  Future<void> _onAdPublished(Emitter<PublishAdState> emit) async {
    //emit(state.copyWith(city: city, status: CommonStatus.loading));
    //todo save ad in firestore
    // emit(state.copyWith(city: city, status: CommonStatus.success));
  }
}
