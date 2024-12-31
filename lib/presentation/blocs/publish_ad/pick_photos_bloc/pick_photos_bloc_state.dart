part of 'pick_photos_bloc_cubit.dart';

@freezed
class PickPhotosBlocState with _$PickPhotosBlocState {
  const factory PickPhotosBlocState({@Default([]) List<PhotoEntity> photos}) =
      _PickPhotosBlocState;
}
