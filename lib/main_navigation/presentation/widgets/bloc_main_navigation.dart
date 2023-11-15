import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/home/presentation/screen/home_screen.dart';
import 'package:bpm/signup/presentation/screens/signup_screen.dart';
import 'package:bpm/welcome/presentation/screen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocMainNavigation extends StatelessWidget {
  const BlocMainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        logger.d("STATE : ${state.toString()}");
        return state.maybeMap(
            success: (s) => const HomeScreen(),
            failure: (f) => const SignupScreen(),
            orElse: () => const WelcomeScreen());
      },
    );
  }
}
