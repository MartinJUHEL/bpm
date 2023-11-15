import 'package:injectable/injectable.dart';

@injectable
class IsNameValidUseCase {
  Future<bool> execute(String name) async {
    //TODO : Check that there is no user already with this name
    return Future.value(true);
  }
}
