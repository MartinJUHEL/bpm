part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({@Default(0) final int tabIndex}) = _HomeState;
}
