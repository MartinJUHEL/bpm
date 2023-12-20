part of 'publish_ad_bloc.dart';

@freezed
class PublishAdEvent with _$PublishAdEvent {
  const factory PublishAdEvent.started() = _Started;
  const factory PublishAdEvent.movedToNextPage() = _MovedToNextPage;
  const factory PublishAdEvent.movedToPreviousPage() = _MovedToPreviousPage;
  const factory PublishAdEvent.titleChanged(String title) = _TitleChanged;
  const factory PublishAdEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory PublishAdEvent.savedPhotos(List<PhotoModel> photos) = _SavedPhotos;
  const factory PublishAdEvent.citySaved(String city) = _CitySaved;

}
