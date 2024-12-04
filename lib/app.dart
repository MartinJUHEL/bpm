import 'package:assoshare/core/network/GenericErrorTrigger.dart';
import 'package:assoshare/core/network/blocs/generic_error_trigger_cubit.dart';
import 'package:assoshare/core/presentation/widgets/error_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app/theme.dart';
import 'core/di/injection.dart';
import 'features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'navigation/presentation/widgets/bloc_main_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AuthenticationBloc>()..add(const AuthenticationEvent.started()),
        ),
        BlocProvider(create: (context) => locator<GenericErrorTriggerCubit>()..checkConnection())
      ],
      child: MaterialApp(
        title: 'Flutter Demo Production',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppTheme.lightTheme,
        builder: EasyLoading.init(),
        home: BlocListener<GenericErrorTriggerCubit, GenericErrorTriggerState>(
          listener: (context, state) {
            ErrorType? errorType = state.errorType;
            if (errorType != null) {
              showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) => _displayErrorDialog(errorType, () {
                        context.read<GenericErrorTriggerCubit>().onDialogClosed();
                        Navigator.pop(dialogContext);
                      })).then((onValue) async {
                if (context.mounted) {
                  context.read<GenericErrorTriggerCubit>().onDialogClosed();
                }
              });
            }
          },
          child: const BlocMainNavigation(),
        ),
      ),
    );
  }

///////////////////////////////////////////////////////////////////////////
// PRIVATE METHODS
///////////////////////////////////////////////////////////////////////////

  ErrorDialog _displayErrorDialog(ErrorType error, VoidCallback onDismissed) {
    return switch (error) {
      ErrorType.serverError => ErrorDialog(
          errorTitle: tr('errorTitle'),
          errorMessage: tr('errorOccurred'),
          image: SvgPicture.asset(_serverErrorAsset),
          onPressed: onDismissed),
      ErrorType.noConnectivity => ErrorDialog(
          errorTitle: tr('errorTitle'),
          errorMessage: tr('noConnectionMessage'),
          image: SvgPicture.asset(_noConnectivityAsset),
          onPressed: onDismissed),
    };
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const String _serverErrorAsset = 'assets/images/server_error.svg';
const String _noConnectivityAsset = 'assets/images/no_connectivity.svg';
