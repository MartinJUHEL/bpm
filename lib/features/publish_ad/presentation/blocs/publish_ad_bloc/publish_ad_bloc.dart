import 'dart:async';

import 'package:assoshare/core/domain/entities/ad_entity.dart';
import 'package:assoshare/features/publish_ad/domain/models/photo_model.dart';
import 'package:assoshare/features/publish_ad/domain/usecases/is_ad_description_valid_use_case.dart';
import 'package:assoshare/features/publish_ad/domain/usecases/is_ad_title_valid_use_case.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'publish_ad_bloc.freezed.dart';
part 'publish_ad_state.dart';

@injectable
class PublishAdCubit extends Cubit<PublishAdState> {
  PublishAdCubit(this._isAdTitleValidUseCase, this._isAdDescriptionValidUseCase) : super(const PublishAdState());

  final IsAdTitleValidUseCase _isAdTitleValidUseCase;
  final IsAdDescriptionValidUseCase _isAdDescriptionValidUseCase;

  void onMovedToNextPage() {
    emit(state.copyWith(pageIndex: state.pageIndex + 1));
  }

  void onMovedToPreviousPage() {
    emit(state.copyWith(pageIndex: state.pageIndex - 1));
  }

  void onTitleChanged(String newTitle) {
    emit(state.copyWith(title: newTitle, isTitleValid: _isAdTitleValidUseCase.execute(newTitle)));
  }

  void onDescriptionChanged(String newDescription) {
    emit(state.copyWith(
        description: newDescription, isDescriptionValid: _isAdDescriptionValidUseCase.execute(newDescription)));
  }

  void onSavedPhotos(List<PhotoModel> photos) {
    emit(state.copyWith(photos: photos, pageIndex: state.pageIndex + 1));
  }

  void onCitySaved(CityEntity city) {
    emit(state.copyWith(city: city));
    onMovedToNextPage();
  }

  Future<void> onAdPublished() async {
    //emit(state.copyWith(city: city, status: CommonStatus.loading));
    //todo save ad in firestore
    // emit(state.copyWith(city: city, status: CommonStatus.success));
  }

  void onAdTypeSelected(AdType type) {
    emit(state.copyWith(adType: type));
    onMovedToNextPage();
  }
}
