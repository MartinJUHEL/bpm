import 'package:assoshare/presentation/navigation/navigation_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NavigationCubit', () {
    late NavigationCubit cubit;

    setUp(() {
      cubit = NavigationCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is NavbarItem.search', () {
      expect(cubit.state.navbarItem, NavbarItem.search);
    });

    blocTest<NavigationCubit, NavigationState>(
      'emits NavbarItem.favorites when getNavBarItem is called with NavbarItem.favorites',
      build: () => cubit,
      act: (cubit) => cubit.getNavBarItem(NavbarItem.favorites),
      expect: () => [const NavigationState(NavbarItem.favorites)],
    );

    blocTest<NavigationCubit, NavigationState>(
      'emits NavbarItem.messages when getNavBarItem is called with NavbarItem.messages',
      build: () => cubit,
      act: (cubit) => cubit.getNavBarItem(NavbarItem.messages),
      expect: () => [const NavigationState(NavbarItem.messages)],
    );

    blocTest<NavigationCubit, NavigationState>(
      'emits NavbarItem.profile when getNavBarItem is called with NavbarItem.profile',
      build: () => cubit,
      act: (cubit) => cubit.getNavBarItem(NavbarItem.profile),
      expect: () => [const NavigationState(NavbarItem.profile)],
    );

    blocTest<NavigationCubit, NavigationState>(
      'emits correct NavbarItem when getNavBarItemFromIndex is called with valid index',
      build: () => cubit,
      act: (cubit) => cubit.getNavBarItemFromIndex(2), // Index for NavbarItem.messages
      expect: () => [const NavigationState(NavbarItem.messages)],
    );

    blocTest<NavigationCubit, NavigationState>(
      'does not emit new state when getNavBarItemFromIndex is called with invalid index',
      build: () => cubit,
      act: (cubit) => cubit.getNavBarItemFromIndex(5), // Invalid index
      expect: () => [], // Expect no state changes
    );
  });
}
