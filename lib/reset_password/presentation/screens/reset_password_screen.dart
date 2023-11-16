import 'package:bpm/core/di/injection.dart';
import 'package:bpm/core/presentation/widgets/error_dialog.dart';
import 'package:bpm/core/presentation/widgets/info_dialog.dart';
import 'package:bpm/core/presentation/widgets/submit_button.dart';
import 'package:bpm/reset_password/presentation/bloc/reset_password_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<ResetPasswordBloc>(),
      child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          switch (state.status) {
            case ResetPasswordStatus.initial:
              {}
            case ResetPasswordStatus.loading:
            // TODO: Handle this case.
            case ResetPasswordStatus.success:
              showDialog(
                  context: context,
                  builder: (context) => const InfoDialog(
                        text: 'test',
                        title: 'test',
                        descriptions: 'test',
                      )).whenComplete(() => Navigator.of(context).pop());
            case ResetPasswordStatus.failure:
              showDialog(
                  context: context,
                  builder: (context) => ErrorDialog(
                        errorMessage: state.error,
                        onPressed: () => Navigator.of(context).pop(),
                      ));
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('resetPassword').tr(),
                  titleTextStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                  backgroundColor: Theme.of(context).colorScheme.background,
                  elevation: 0,
                  iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
                ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Text('resetPasswordInfo').tr(),
                  SizedBox(
                    width: size.width * 0.8,
                    child: TextFormField(
                        onChanged: (value) {
                          context
                              .read<ResetPasswordBloc>()
                              .add(ResetPasswordEvent.emailChanged(value));
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: tr('emailLabel'),
                          helperText: tr('emailHelperText'),
                          hintText: tr('emailLabel'),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                        )),
                  ),
                  SubmitButton(
                      isEnabled: !state.status.isLoading,
                      title: tr('resetPassword'),
                      onPressed: () => context.read<ResetPasswordBloc>().add(
                          ResetPasswordEvent.sendedEmailResetPassword(
                              state.email)))
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
