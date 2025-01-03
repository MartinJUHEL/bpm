enum RouteList {
  splash(name: 'splash', path: '/splash'),
  home(name: 'home', path: '/home'),
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
  profileAdPhotoPager(name: 'profileAdPhotoPager', path: '/photoPager', parent: RouteList.profileAdDetails),

  // MESSAGES.
  messages(name: 'messages', path: '/messages'),

  // FAVORITES.
  favorites(name: 'favorites', path: '/favorites'),

  // SEARCH.
  search(name: 'search', path: '/search');

  const RouteList({required this.name, required this.path, RouteList? parent}) : _parent = parent;

  final String name;
  final String path;
  final RouteList? _parent;

  String get fullPath => _parent != null ? [_parent?.fullPath, path].join('/') : path;
}

extension RouteExtension on String {
  /// Return true if this route can be reached when unlogged.
  bool isSignOutRoute() => [RouteList.welcome, RouteList.chooseUserType, RouteList.signup, RouteList.signIn]
      .map((route) => route.fullPath)
      .contains(this);
}
