import 'package:assoshare/presentation/blocs/signup/signup_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width * 0.8,
          child: TextFormField(
              onChanged: (value) {
                context
                    .read<SignupBloc>()
                    .add(SignupEvent.passwordChanged(value));
              },
              obscureText: state.obscurePassword,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () => context
                      .read<SignupBloc>()
                      .add(const SignupEvent.obscurePasswordToggled()),
                  icon: state.obscurePassword
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
                labelText: tr('passwordLabel'),
                helperText: tr('passwordHelperText'),
                errorText: !state.isPasswordValid && state.showError
                    ? tr('passwordNotValid')
                    : null,
                hintText: tr('passwordLabel'),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              )),
        );
      },
    );
  }
}
