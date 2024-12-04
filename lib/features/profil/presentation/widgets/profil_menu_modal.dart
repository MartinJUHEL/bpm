import 'package:assoshare/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilMenuModal extends StatelessWidget {
  const ProfilMenuModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationEvent.signedOut());
              Navigator.pop(context);
            },
            title: const Text('logout').tr(),
            leading: const Icon(Icons.logout_outlined),
          )
        ],
      ),
    );
  }
}
