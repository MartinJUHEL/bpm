import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:bpm/core/domain/usecases/get_user_type_from_string_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserModelFirestoreToModelMapper {
  final GetUserTypeFromStringUseCase _getUserTypeFromStringUseCase;

  UserModelFirestoreToModelMapper(this._getUserTypeFromStringUseCase);

  UserModel execute(Map<dynamic, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      displayName: json['displayName'],
      isVerified: json['isVerified'],
      email: json['email'],
      userType: _getUserTypeFromStringUseCase.execute(json['userType']),
      //characterID: List<String>.from(json['character_id']),
    );
  }
}
