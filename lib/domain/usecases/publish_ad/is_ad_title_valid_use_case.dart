import 'package:injectable/injectable.dart';

@injectable
class IsAdTitleValidUseCase {
  bool execute(String title) {
    return title.length >= 3 && title.length <= 30;
  }
}
