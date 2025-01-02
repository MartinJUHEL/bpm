import 'package:assoshare/app/constants.dart';
import 'package:assoshare/core/network/GenericErrorTrigger.dart';
import 'package:assoshare/core/network/blocs/generic_error_trigger_cubit.dart';
import 'package:assoshare/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app/theme.dart';
import 'core/di/injection.dart';
import 'core/utils/theme_util.dart';
import 'navigation/presentation/widgets/bloc_main_navigation.dart';
import 'presentation/widgets/common/error_dialog.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Nunito", "Baloo 2");

    MaterialTheme theme = MaterialTheme(textTheme);

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
        //theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        theme: theme.light(),
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
          image: SvgPicture.asset(Constants.serverErrorAsset),
          onPressed: onDismissed),
      ErrorType.noConnectivity => ErrorDialog(
          errorTitle: tr('errorTitle'),
          errorMessage: tr('noConnectionMessage'),
          image: SvgPicture.asset(Constants.noConnectivityAsset),
          onPressed: onDismissed),
    };
  }
}
