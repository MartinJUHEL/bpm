import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/core/presentation/widgets/error_dialog.dart';
import 'package:bpm/core/presentation/widgets/submit_button.dart';
import 'package:bpm/signup/presentation/bloc/signup_bloc.dart';
import 'package:bpm/signup/presentation/widgets/email_field.dart';
import 'package:bpm/signup/presentation/widgets/name_field.dart';
import 'package:bpm/signup/presentation/widgets/password_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state.errorMessage?.isNotEmpty == true) {
          showDialog(
              context: context,
              builder: (context) => ErrorDialog(
                    errorMessage: state.errorMessage,
                    onPressed: () => Navigator.of(context).pop(),
                  ));
        } else if (state.isFormValid && !state.isLoading) {
          context
              .read<AuthenticationBloc>()
              .add(const AuthenticationEvent.started());
          context.read<SignupBloc>().add(const SignupEvent.succeeded());
        } else if (state.isFormValidateFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text('textFillIssue').tr()));
        }
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: BlocBuilder<SignupBloc, SignupState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('signup').tr(),
                    Padding(
                        padding: EdgeInsets.only(bottom: size.height * 0.02)),
                    const EmailField(),
                    SizedBox(height: size.height * 0.01),
                    const PasswordField(),
                    SizedBox(height: size.height * 0.01),
                    const NameField(),
                    SizedBox(height: size.height * 0.01),
                    SubmitButton(
                      isEnabled: true,
                      isLoading: state.isLoading,
                      onPressed: !state.isFormValid
                          ? () => context
                              .read<SignupBloc>()
                              .add(const SignupEvent.submitted())
                          : () => {},
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
