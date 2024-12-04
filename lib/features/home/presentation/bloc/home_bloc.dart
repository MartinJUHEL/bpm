import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
          started: () =>{},
          tabChanged: (int index) =>_tabChanged(index, emit));
    });
  }

  _tabChanged(int index, Emitter<HomeState> emit) {
    emit(state.copyWith(tabIndex : index));
  }
}
