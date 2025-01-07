part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(null) final UserEntity? user}) = _HomeState;
}
