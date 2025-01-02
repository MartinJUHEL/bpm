import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/presentation/blocs/signup/signup_bloc.dart';
import 'package:assoshare/presentation/screens/signup/signup_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              onPressed: () => context.pushNamed(RouteList.chooseUserType.name),
              child: const Text('signup').tr(),
            ),
            OutlinedButton(
              onPressed: () =>
                  context.pushNamed(RouteList.signup.name, extra: const SignupScreenArgs(formType: FormType.signIn)),
              child: const Text('signin').tr(),
            ),
          ],
        ),
      ),
    ));
  }
}
