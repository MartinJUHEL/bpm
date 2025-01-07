part of 'navigation_cubit.dart';

enum NavbarItem {
  search(0),
  favorites(1),
  messages(2),
  profile(3);

  const NavbarItem(this.itemIndex);

  final int itemIndex;
}

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState(NavbarItem navbarItem) = _NavigationState;

  const NavigationState._();

  int get index => navbarItem.itemIndex;
}
