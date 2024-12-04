import 'dart:async';

import 'package:assoshare/core/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profil_bloc.freezed.dart';
part 'profil_event.dart';
part 'profil_state.dart';

@injectable
class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  final UserRepository _userRepository;

  ProfilBloc(this._userRepository) : super(const ProfilState()) {
    on<ProfilEvent>((event, emit) async {
      await event.when<FutureOr<void>>(started: () => _started(emit));
    });
  }

  void _started(Emitter<ProfilState> emit) {
    String? newUserName = _userRepository.getLocalUser()?.displayName;
    emit(state.copyWith(userName: newUserName));
  }
}
