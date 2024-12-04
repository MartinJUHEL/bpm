import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/Authentication/presentation/bloc/authentication_bloc.dart';
import '../../../features/Authentication/presentation/screens/email_not_verified_screen.dart';
import '../../../features/home/presentation/screen/home_screen.dart';
import '../../../features/signup/presentation/screens/welcome_screen.dart';
import '../../../features/splash/presentation/screen/splash_screen.dart';

class BlocMainNavigation extends StatelessWidget {
  const BlocMainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.maybeMap(
          emailNotVerified: (_) =>
              Navigator.popUntil(context, (route) => route.isFirst),
          success: (_) => Navigator.popUntil(context, (route) => route.isFirst),
          orElse: () {},
        );
      },
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return state.maybeMap(
              success: (s) => HomeScreen(),
              emailNotVerified: (_) => const EmailNotVerifiedScreen(),
              failure: (_) => const WelcomeScreen(),
              orElse: () => const SplashScreen());
        },
      ),
    );
  }
}
