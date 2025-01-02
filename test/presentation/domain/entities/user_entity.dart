import 'package:assoshare/domain/entities/user/user_entity.dart';

final defaultUser = UserEntity(
    uid: "1234",
    isVerified: true,
    email: "testuser@gmail.com",
    displayName: "usertest",
    userType: UserType.association,
    creationDate: DateTime.utc(1989, 11, 9));
