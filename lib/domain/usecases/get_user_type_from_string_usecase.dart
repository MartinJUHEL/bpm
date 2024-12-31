import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserTypeFromStringUseCase {
  UserType execute(String userTypeString) {
    return switch (userTypeString) {
      individual => UserType.individual,
      association => UserType.association,
      _ => UserType.individual
    };
  }

  static const String individual = "individual";
  static const String association = "association";
}
