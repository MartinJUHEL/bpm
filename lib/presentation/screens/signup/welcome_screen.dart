import 'package:assoshare/presentation/blocs/signup/signup_bloc.dart';
import 'package:assoshare/presentation/screens/signup/choose_user_type_screen.dart';
import 'package:assoshare/presentation/screens/signup/signup_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChooseUserTypeScreen()),
              ),
              child: Text('signup').tr(),
            ),
            OutlinedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupScreen(formType: FormType.signIn)),
              ),
              child: const Text('signin').tr(),
            ),
          ],
        ),
      ),
    ));
  }
}
