import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/Authentication/presentation/screens/email_not_verified_screen.dart';
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
        return state.maybeMap(
            success: (s) => const HomeScreen(),
            failure: (_) => const SignupScreen(),
            emailNotVerified: (_)=> const EmailNotVerifiedScreen(),
            orElse: () => const WelcomeScreen());
      },
    );
  }
}
