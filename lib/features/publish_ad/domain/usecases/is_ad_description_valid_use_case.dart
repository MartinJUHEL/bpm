import 'package:injectable/injectable.dart';

@injectable
class IsAdDescriptionValidUseCase {
  bool execute(String description) {
    return description.length >= 10;
  }
}
