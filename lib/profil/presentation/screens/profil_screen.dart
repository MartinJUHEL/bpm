import 'package:bpm/core/di/injection.dart';
import 'package:bpm/profil/presentation/bloc/profil_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<ProfilBloc>()..add(const ProfilEvent.started()),
      child: SafeArea(child: BlocBuilder<ProfilBloc, ProfilState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(child: Text(state.userName ?? "")),
          );
        },
      )),
    );
  }
}
