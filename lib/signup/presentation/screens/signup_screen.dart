import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
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
  const SignupScreen({super.key});

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
                        padding: EdgeInsets.only(bottom: size.height * 0.04)),
                    _buildSegmentedButton(context, state, 0.8 * size.width),
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
    );
  }

  SizedBox _buildSegmentedButton(
      BuildContext context, SignupState state, double width) {
    return SizedBox(
      width: width,
      child: SegmentedButton<FormType>(
        style: ButtonStyle(),
        showSelectedIcon: false,
        onSelectionChanged: (Set<FormType> newSelection) => context
            .read<SignupBloc>()
            .add(SignupEvent.formTypeToggled(newSelection.first)),
        segments: <ButtonSegment<FormType>>[
          ButtonSegment<FormType>(
            value: FormType.signUp,
            label: const Text('signup').tr(),
          ),
          ButtonSegment<FormType>(
            value: FormType.signIn,
            label: const Text('signin').tr(),
          ),
        ],
        selected: <FormType>{state.formType ?? FormType.signUp},
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
                        style: TextStyle(color:Theme.of(context).colorScheme.primary,  ),
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
            title: _getSubmitButtonTitle(state.formType ?? FormType.signUp),
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
