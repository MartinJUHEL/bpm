import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/core/di/injection.dart';
import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:bpm/core/presentation/widgets/error_dialog.dart';
import 'package:bpm/core/presentation/widgets/submit_button.dart';
import 'package:bpm/reset_password/presentation/screens/reset_password_screen.dart';
import 'package:bpm/signup/presentation/bloc/signup_bloc.dart';
import 'package:bpm/signup/presentation/widgets/email_field.dart';
import 'package:bpm/signup/presentation/widgets/name_field.dart';
import 'package:bpm/signup/presentation/widgets/password_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen(
      {super.key, required this.formType, this.userType = UserType.individual});

  final FormType formType;
  final UserType userType;

  String _getSubmitButtonTitle(FormType formType) {
    switch (formType) {
      case FormType.signUp:
        return tr('signup');
      case FormType.signIn:
        return tr('signin');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<SignupBloc>()
        ..add(SignupEvent.initialized(formType, userType)),
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.errorMessage?.isNotEmpty == true) {
            showDialog(
                context: context,
                builder: (context) => ErrorDialog(
                      errorMessage: state.errorMessage,
                      onPressed: () => Navigator.of(context).pop(),
                    ));
          } else if (state.isFormValid && !state.isLoading) {
            context.read<SignupBloc>().add(const SignupEvent.succeeded());
            context
                .read<AuthenticationBloc>()
                .add(const AuthenticationEvent.started());
          } else if (state.isFormValidateFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: const Text('textFillIssue').tr()));
          }
        },
        child: SafeArea(
          child: Scaffold(
            body: Center(
              child: BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: size.height * 0.04)),
                      const Text('appTitle').tr(),
                      Padding(
                          padding: EdgeInsets.only(bottom: size.height * 0.02)),
                      _buildFormBody(size, state, context),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _buildFormBody(
      Size size, SignupState state, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const EmailField(),
          SizedBox(height: size.height * 0.01),
          const PasswordField(),
          SizedBox(height: size.height * 0.01),
          state.formType == FormType.signUp
              ? Column(
                  children: [
                    const NameField(),
                    SizedBox(height: size.height * 0.01),
                  ],
                )
              : const SizedBox(),
          state.formType == FormType.signIn
              ? Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          text: tr('forgotPassword'),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResetPasswordScreen()),
                                )),
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                )
              : const SizedBox(),
          SubmitButton(
            title: _getSubmitButtonTitle(formType),
            isLoading: state.isLoading,
            onPressed: !state.isFormValid
                ? () => context
                    .read<SignupBloc>()
                    .add(const SignupEvent.submitted())
                : () => {},
          )
        ],
      ),
    );
  }
}
