import 'dart:async';

import 'package:assoshare/core/network/GenericErrorTrigger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'generic_error_trigger_cubit.freezed.dart';
part 'generic_error_trigger_state.dart';

@injectable
class GenericErrorTriggerCubit extends Cubit<GenericErrorTriggerState> {
  GenericErrorTriggerCubit(this._genericErrorTrigger) : super(const GenericErrorTriggerState());

  final GenericErrorTrigger _genericErrorTrigger;

  late final StreamSubscription<ErrorType> _streamSubscription;

  void checkConnection() async {
    _streamSubscription = _genericErrorTrigger.watchGenericError().listen((errorType) {
      emit(state.copyWith(errorType: errorType));
    });
  }

  void onDialogClosed() {
    emit(state.copyWith(errorType: null));
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
