import 'package:bpm/core/domain/entities/user_model.dart';
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
