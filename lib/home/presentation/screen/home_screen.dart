import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
              child: Column(
                children: [
                  const Text('COUCOU'),
                  OutlinedButton(onPressed: () =>
                      context.read<AuthenticationBloc>().add(
                          const AuthenticationEvent.signedOut()),
                      child: const Text('test'))
                ],
              )),
        );
      },
    );
  }
}
