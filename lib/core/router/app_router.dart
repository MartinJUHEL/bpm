import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/router/app_nav_observer.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:assoshare/presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:assoshare/presentation/navigation/navigation_cubit.dart';
import 'package:assoshare/presentation/screens/ad_details_screen.dart';
import 'package:assoshare/presentation/screens/home_screen.dart';
import 'package:assoshare/presentation/screens/photo_pager_screen.dart';
import 'package:assoshare/presentation/screens/publish_ad_screen.dart';
import 'package:assoshare/presentation/screens/signup/choose_user_type_screen.dart';
import 'package:assoshare/presentation/screens/signup/reset_password_screen.dart';
import 'package:assoshare/presentation/screens/signup/signup_screen.dart';
import 'package:assoshare/presentation/screens/signup/welcome_screen.dart';
import 'package:assoshare/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nested/nested.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

abstract class AppRouter {
  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteList.splash.path,
    observers: [AppNavObserver()],
    routes: [
      GoRoute(
        name: RouteList.splash.name,
        path: RouteList.splash.path,
        builder: (context, state) => _Page(child: const SplashScreen()),
      ),
      GoRoute(
          name: RouteList.welcome.name,
          path: RouteList.welcome.path,
          builder: (context, state) => _Page(child: const WelcomeScreen()),
          routes: [
            GoRoute(
                name: RouteList.chooseUserType.name,
                path: RouteList.chooseUserType.path,
                builder: (context, state) => _Page(child: const ChooseUserTypeScreen()),
                routes: [
                  GoRoute(
                    name: RouteList.signup.name,
                    path: RouteList.signup.path,
                    builder: (context, state) => _Page(
                        child: SignupScreen(
                      args: state.extra! as SignupScreenArgs,
                    )),
                  ),
                ]),
            GoRoute(
                name: RouteList.signIn.name,
                path: RouteList.signIn.path,
                builder: (context, state) => _Page(
                        child: SignupScreen(
                      args: state.extra! as SignupScreenArgs,
                    )),
                routes: [
                  GoRoute(
                    name: RouteList.resetPassword.name,
                    path: RouteList.resetPassword.path,
                    builder: (context, state) => _Page(child: const ResetPasswordScreen()),
                  ),
                ]),
          ]),
      GoRoute(
          name: RouteList.home.name,
          path: RouteList.home.path,
          builder: (context, state) => _Page(
                providers: [
                  BlocProvider(create: (_) => locator<NavigationCubit>()),
                ],
                child: const HomeScreen(),
              ),
          routes: [
            GoRoute(
              name: RouteList.publishAd.name,
              path: RouteList.publishAd.path,
              builder: (context, state) => _Page(
                providers: [
                  BlocProvider(
                    create: (context) => locator<PublishAdCubit>(),
                  ),
                ],
                child: const PublishAdScreen(),
              ),
            ),
          ]),
      GoRoute(
        name: RouteList.messages.name,
        path: RouteList.messages.path,
        builder: (context, state) => _Page(
            providers: [
              BlocProvider(create: (_) => locator<NavigationCubit>()),
            ],
            child: const HomeScreen(
              selectedNavbarItem: NavbarItem.messages,
            )),
      ),
      GoRoute(
        name: RouteList.favorites.name,
        path: RouteList.favorites.path,
        builder: (context, state) => _Page(
            providers: [
              BlocProvider(create: (_) => locator<NavigationCubit>()),
            ],
            child: const HomeScreen(
              selectedNavbarItem: NavbarItem.favorites,
            )),
      ),
      GoRoute(
        name: RouteList.search.name,
        path: RouteList.search.path,
        builder: (context, state) => _Page(
            providers: [
              BlocProvider(create: (_) => locator<NavigationCubit>()),
            ],
            child: const HomeScreen(
              selectedNavbarItem: NavbarItem.search,
            )),
      ),
      GoRoute(
        name: RouteList.profile.name,
        path: RouteList.profile.path,
        builder: (context, state) => _Page(
          providers: [
            BlocProvider(create: (_) => locator<NavigationCubit>()),
          ],
          child: const HomeScreen(selectedNavbarItem: NavbarItem.profile),
        ),
        routes: [
          GoRoute(
              name: RouteList.profileAdDetails.name,
              path: RouteList.profileAdDetails.path,
              builder: (context, state) => _Page(
                    child: AdDetailsScreen(
                      ad: state.extra! as AdEntity,
                      fromUserProfile: true,
                    ),
                  ),
              routes: [
                GoRoute(
                  name: RouteList.profileAdPhotoPager.name,
                  path: RouteList.profileAdPhotoPager.path,
                  builder: (context, state) => _Page(child: PhotoPagerScreen(photosUrl: state.extra as List<String>)),
                ),
              ]),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text('Route not found!'),
        ),
      ),
    ),
    redirect: (context, state) async {
      final authState = context.read<AuthenticationBloc>().state;
      return authState.maybeMap(
          emailNotVerified: (_) => RouteList.emailNotVerified.path,
          failure: (_) {
            // Go to welcome page if this route can't be reached when unlogged.
            if (!state.uri.toString().isSignOutRoute()) {
              return RouteList.welcome.path;
            }
            return null;
          },
          success: (_) {
            // Redirection to HomePage.
            if (state.uri.toString() == RouteList.splash.fullPath) {
              return RouteList.home.path;
            }
            return null;
          },
          orElse: () => null);
    },
  );
}

class _Page extends StatelessWidget {
  _Page({required this.child, List<SingleChildWidget>? providers}) : _providers = providers ?? [];

  final Widget child;
  final List<SingleChildWidget> _providers;

  @override
  Widget build(BuildContext context) {
    return (_providers.isNotEmpty) ? MultiBlocProvider(providers: _providers, child: child) : child;
  }
}
