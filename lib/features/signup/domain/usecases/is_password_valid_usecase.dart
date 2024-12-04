import 'package:injectable/injectable.dart';

@injectable
class IsPasswordValidUseCase {

  bool execute(String password) {
    return password.length >= 6;
  }
}