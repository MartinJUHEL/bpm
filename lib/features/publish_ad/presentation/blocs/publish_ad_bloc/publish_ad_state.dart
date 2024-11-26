part of 'publish_ad_bloc.dart';

@freezed
class PublishAdState with _$PublishAdState {
  const PublishAdState._();

  const factory PublishAdState({
    @Default(0) final int pageIndex,
    @Default('') final String title,
    @Default(false) final bool isTitleValid,
    @Default('') final String description,
    @Default('') final String price,
    final AdType? adType,
    @Default(false) final bool isDescriptionValid,
    @Default([]) final List<PhotoModel> photos,
    final CityEntity? city,
    @Default('') final String errorMessage,
  }) = _PublishAdState;

  int getPageNumber() {
    switch (adType) {
      case AdType.loan:
        return 5;
      default:
        return 6;
    }
  }
}
