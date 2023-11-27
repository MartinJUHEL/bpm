import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/profil/domain/usecases/get_user_name_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profil_event.dart';

part 'profil_state.dart';

part 'profil_bloc.freezed.dart';

@injectable
class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  final GetUserNameUseCase _getUserNameUseCase;

  ProfilBloc(this._getUserNameUseCase) : super(const ProfilState()) {
    on<ProfilEvent>((event, emit) async {
      await event.when<FutureOr<void>>(started: () => _started(emit));
    });
  }

  void _started(Emitter<ProfilState> emit) {
    String? newUserName = _getUserNameUseCase.execute();
    emit(state.copyWith(userName: newUserName));
  }
}
