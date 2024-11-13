part of 'publish_ad_bloc.dart';

@freezed
class PublishAdState with _$PublishAdState {
  const factory PublishAdState({
    @Default(CommonStatus.initial) CommonStatus status,
    @Default(0) int pageIndex,
    @Default('') String title,
    @Default(false) bool isTitleValid,
    @Default('') String description,
    @Default(false) bool isDescriptionValid,
    @Default([]) List<PhotoModel> photos,
    final CityModel? city,
    @Default('') String errorMessage,
  }) = _PublishAdState;
}
