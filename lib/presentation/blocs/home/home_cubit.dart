import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final UserRepository userRepository;

  HomeCubit(this.userRepository) : super(const HomeState());

  void initialize() {
    final user = userRepository.getLocalUser();
    emit(state.copyWith(user: user));
  }
}
