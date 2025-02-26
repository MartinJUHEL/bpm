enum RouteList {
  splash(name: 'splash', path: '/splash'),
  home(name: 'user', path: '/user'),
  emailNotVerified(name: 'emailNotVerified', path: '/emailNotVerified'),
  publishAd(name: 'publishAd', path: 'publishAd', parent: RouteList.home),

  // SIGNUP.
  welcome(name: 'welcome', path: '/welcome'),
  chooseUserType(name: 'chooseUserType', path: 'chooseUserType', parent: RouteList.welcome),
  signup(name: 'signup', path: 'signup', parent: RouteList.chooseUserType),
  signIn(name: 'signIn', path: 'signIn', parent: RouteList.welcome),
  resetPassword(name: 'resetPassword', path: 'resetPassword', parent: RouteList.signIn),

  // PROFILE.
  profile(name: 'profile', path: '/profile'),
  profileAdDetails(name: 'profileAdDetails', path: '/adDetails', parent: RouteList.profile),

  // CHATS.
  chats(name: 'chats', path: '/chats'),
  chatDetails(name: 'chatDetails', path: 'chatDetails', parent: RouteList.chats),

  // FAVORITES.
  favorites(name: 'favorites', path: '/favorites'),
  favoritesAdDetails(name: 'favoritesAdDetails', path: '/favoritesAdDetails', parent: RouteList.favorites),

  // SEARCH.
  search(name: 'search', path: '/search'),
  searchAdDetails(name: 'searchAdDetails', path: '/adDetails', parent: RouteList.search),

  // AD DETAILS.
  adPhotoPager(name: 'adPhotoPager', path: '/photoPager');

  const RouteList({required this.name, required this.path, RouteList? parent}) : _parent = parent;

  final String name;
  final String path;
  final RouteList? _parent;

  String get fullPath => _parent != null ? [_parent?.fullPath, path].join('/') : path;
}

extension RouteExtension on String {
  /// Return true if this route can be reached when unlogged.
  bool isSignOutRoute() => [
        RouteList.welcome,
        RouteList.splash,
        RouteList.chooseUserType,
        RouteList.signup,
        RouteList.signIn,
        RouteList.resetPassword
      ].map((route) => route.fullPath).contains(this);
}
