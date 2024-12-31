import 'dart:async';

import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:assoshare/presentation/blocs/list_ads/list_ads_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final UserRepository _userRepository;
  late final StreamSubscription<Result<UserEntity>> _userStreamSubscription;

  ProfileCubit(this._userRepository) : super(ProfileState.initial());

  void initialization() async {
    _userStreamSubscription = _userRepository.watchUser().listen((result) {
      result.when(
          success: (user) => emit(ProfileState.data(user: user)),
          failure: (_) => emit(ProfileState.error()));
    });
  }

  Future<void> refresh() async {
      await _userRepository.fetchUser();
  }

  @override
  Future<void> close() {
    _userStreamSubscription.cancel();
    return super.close();
  }
}
