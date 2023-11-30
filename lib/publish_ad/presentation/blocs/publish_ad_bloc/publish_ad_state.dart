part of 'publish_ad_bloc.dart';

enum PublishAdStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == PublishAdStatus.initial;

  bool get isLoading => this == PublishAdStatus.loading;

  bool get isSuccess => this == PublishAdStatus.success;

  bool get isFailure => this == PublishAdStatus.failure;
}

@freezed
class PublishAdState with _$PublishAdState {
  const factory PublishAdState({
    @Default(PublishAdStatus.initial) PublishAdStatus status,
    @Default(0) int pageIndex,
    @Default('') String title,
    @Default(false) bool isTitleValid,
    @Default('') String description,
    @Default(false) bool isDescriptionValid,

}) = _PublishAdState;
}
