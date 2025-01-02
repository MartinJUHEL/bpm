import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/ad/post_ad_entity.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:assoshare/domain/usecases/publish_ad/is_ad_description_valid_use_case.dart';
import 'package:assoshare/domain/usecases/publish_ad/is_ad_title_valid_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'publish_ad_bloc.freezed.dart';
part 'publish_ad_state.dart';

@injectable
class PublishAdCubit extends Cubit<PublishAdState> {
  PublishAdCubit(
      this._isAdTitleValidUseCase, this._isAdDescriptionValidUseCase, this._adRepository, this._userRepository)
      : super(const PublishAdState());

  final IsAdTitleValidUseCase _isAdTitleValidUseCase;
  final IsAdDescriptionValidUseCase _isAdDescriptionValidUseCase;
  final AdRepository _adRepository;
  final UserRepository _userRepository;

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

  void onSavedPhotos(List<PhotoEntity> photos) {
    emit(state.copyWith(photos: photos, pageIndex: state.pageIndex + 1));
  }

  void onCitySaved(CityEntity city) {
    emit(state.copyWith(city: city));
    onMovedToNextPage();
  }

  void onAdTypeSelected(AdType type) {
    emit(state.copyWith(adType: type));
    onMovedToNextPage();
  }

  void onPriceChanged(int newPrice) {
    emit(state.copyWith(price: newPrice));
  }

  void onPostClicked() async {
    emit(state.copyWith(isLoading: true));
    final adType = state.adType;
    final city = state.city;
    final user = _userRepository.getLocalUser();
    if (adType == null || city == null || user == null) {
      return; // Shouldn't happen.
    }
    final PostAdEntity postAd = PostAdEntity(
        price: state.price,
        title: state.title,
        description: state.description,
        adType: adType,
        photos: state.photos,
        city: city,
        renterId: user.uid,
        renterName: user.displayName,
        creationDate: DateTime.now());
    final result = await _adRepository.postAd(postAd);
    result.when(
        success: (_) => {emit(state.copyWith(isLoading: false, isPublished: true))},
        failure: (_) {
          emit(state.copyWith(isLoading: false, isPublished: false));
        });
  }
}
