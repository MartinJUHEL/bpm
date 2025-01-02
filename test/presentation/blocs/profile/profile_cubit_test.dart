import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/presentation/blocs/profile/profile_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../shared_mocks.mocks.dart';
import '../../domain/entities/user_entity.dart';

void main() {
  late MockUserRepository mockUserRepository;
  late ProfileCubit cubit;

  setUp(() {
    mockUserRepository = MockUserRepository();
    cubit = ProfileCubit(mockUserRepository);
  });

  group('ProfileCubit', () {
    blocTest<ProfileCubit, ProfileState>(
      'emits ProfileState.data when initialization is called and user is fetched successfully',
      build: () {
        final user = defaultUser;
        provideDummy<Result<UserEntity>>(Result.success(user));

        when(mockUserRepository.watchUser()).thenAnswer((_) => Stream.value(Result.success(user)));
        return cubit;
      },
      act: (cubit) => cubit.initialization(),
      expect: () => [ProfileState.data(user: defaultUser)],
    );

    blocTest<ProfileCubit, ProfileState>(
      'emits ProfileState.error when initialization is called and user fetching fails',
      build: () {
        when(mockUserRepository.watchUser()).thenAnswer((_) => Stream.value(const Result.failure(Failure.server())));
        return cubit;
      },
      act: (cubit) => cubit.initialization(),
      expect: () => [ProfileState.error()],
    );

    test('calls fetchUser on refresh', () async {
      when(mockUserRepository.fetchUser())
          .thenAnswer((_) async => Result.success(defaultUser)); // Add stub for fetchUser
      await cubit.refresh();
      verify(mockUserRepository.fetchUser()).called(1);
    });
  });
}
