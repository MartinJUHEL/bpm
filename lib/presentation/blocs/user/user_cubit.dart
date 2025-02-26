import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserCubit extends Cubit<UserEntity?> {
  final UserRepository userRepository;

  UserCubit(this.userRepository) : super(null);

  void initialize() {
    final user = userRepository.getLocalUser();
    emit(user);
  }
}
