import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:bpm/signup/presentation/bloc/signup_bloc.dart';
import 'package:bpm/signup/presentation/screens/signup_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChooseUserTypeScreen extends StatelessWidget {
  const ChooseUserTypeScreen({super.key});

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
                  MaterialPageRoute(
                      builder: (context) => const SignupScreen(
                            formType: FormType.signUp,
                            userType: UserType.individual,
                          )),
                ),
                child: const Text('individual').tr(),
              ),
              OutlinedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignupScreen(
                            formType: FormType.signUp,
                            userType: UserType.association,
                          )),
                ),
                child: const Text('association').tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
