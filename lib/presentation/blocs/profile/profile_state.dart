part of 'profile_cubit.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
sealed class ProfileState with _$ProfileState {
  factory ProfileState.data({
    required UserEntity user,
  }) = ProfilData;

  factory ProfileState.initial() = ProfileInit;

  factory ProfileState.error() = ProfileError;
}
