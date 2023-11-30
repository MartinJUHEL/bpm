import 'package:bpm/app/appTextStyles.dart';
import 'package:bpm/core/di/injection.dart';
import 'package:bpm/core/presentation/widgets/submit_button.dart';
import 'package:bpm/publish_ad/presentation/bloc/publish_ad_bloc.dart';
import 'package:bpm/publish_ad/presentation/widgets/publish_add_title_page.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdScreen extends StatefulWidget {
  const PublishAdScreen({super.key});

  @override
  State<PublishAdScreen> createState() => _PublishAdScreenState();
}

class _PublishAdScreenState extends State<PublishAdScreen> {
  final PageController _controller = PageController();

  _moveToPreviousPage(BuildContext context) {
    context
        .read<PublishAdBloc>()
        .add(const PublishAdEvent.movedToPreviousPage());
    _controller.previousPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  _moveToNextPage(BuildContext context) {
    context.read<PublishAdBloc>().add(const PublishAdEvent.movedToNextPage());
    _controller.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<PublishAdBloc>(),
      child: BlocConsumer<PublishAdBloc, PublishAdState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('postAnAd').tr(),
                titleTextStyle: AppTextStyles.appBarTitleStyle(context),
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    if (state.pageIndex == 0) {
                      Navigator.pop(context);
                    } else {
                      _moveToPreviousPage(context);
                    }
                  },
                ),
              ),
              body: Stack(alignment: Alignment.center, children: [
                Positioned(
                    top: 10,
                    child: DotsIndicator(
                      decorator: DotsDecorator(
                          color: Theme.of(context).colorScheme.secondary,
                          activeColor: Theme.of(context).colorScheme.primary),
                      dotsCount: _page_number,
                      position: state.pageIndex,
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    PublishAdTitlePage(submit: () => _moveToNextPage(context)),
                    Text('TOTO2')
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const _page_number = 3;
}
