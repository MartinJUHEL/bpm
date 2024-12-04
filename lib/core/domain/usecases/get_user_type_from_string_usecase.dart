import 'package:assoshare/core/domain/entities/user/user_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserTypeFromStringUseCase {
  UserType execute(String userTypeString) {
    return switch (userTypeString) {
      _INDIVIDUAL => UserType.individual,
      _ASSOCIATION => UserType.association,
      _ => UserType.individual
    };
  }

  static const String _INDIVIDUAL = "individual";
  static const String _ASSOCIATION = "association";
}
