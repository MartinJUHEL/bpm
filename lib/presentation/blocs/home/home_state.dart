part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(0) final int tabIndex}) = _HomeState;
}
