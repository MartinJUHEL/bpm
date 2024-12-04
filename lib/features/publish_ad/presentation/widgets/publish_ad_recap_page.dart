import 'package:assoshare/app/constants.dart';
import 'package:assoshare/core/presentation/widgets/scroll_view_fill.dart';
import 'package:assoshare/core/presentation/widgets/submit_button.dart';
import 'package:assoshare/features/publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdRecapPage extends StatelessWidget {
  const PublishAdRecapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PublishAdCubit, PublishAdState>(listener: (context, state) {
      if (state.isPublished) {
        Navigator.of(context).pop();
      }
    }, builder: (context, state) {
      return ScrollViewFill(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: Constants.largePadding),
          const Text('RECAP'),
          const Expanded(child: SizedBox.shrink()),
          SubmitButton(
              title: tr('post'),
              isLoading: state.isLoading,
              onPressed: () => {context.read<PublishAdCubit>().onPostClicked()}),
          const SizedBox(height: Constants.largePadding)
        ],
      ));
    });
  }
}
