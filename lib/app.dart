import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/app/theme.dart';
import 'package:bpm/core/di/injection.dart';
import 'package:bpm/main_navigation/presentation/widgets/bloc_main_navigation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AuthenticationBloc>()
            ..add(const AuthenticationEvent.started()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo Production',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppTheme.lightTheme,
        builder: EasyLoading.init(),
        home: const BlocMainNavigation(),
      ),
    );
  }
}


