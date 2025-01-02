import 'package:injectable/injectable.dart';

@injectable
class IsEmailValidUseCase {
  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  bool execute(String email) {
    return _emailRegExp.hasMatch(email);
  }
}