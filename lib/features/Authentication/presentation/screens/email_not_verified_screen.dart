import 'package:assoshare/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailNotVerifiedScreen extends StatelessWidget {
  const EmailNotVerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('verifyEmail').tr(),
                OutlinedButton(
                    onPressed: () => context
                        .read<AuthenticationBloc>()
                        .add(const AuthenticationEvent.started()),
                    child: const Text('refresh').tr())
              ],
            ),
          ),
        );
      },
    );
  }
}
