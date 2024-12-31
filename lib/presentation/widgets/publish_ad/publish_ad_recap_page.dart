import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:assoshare/presentation/widgets/common/scroll_view_fill.dart';
import 'package:assoshare/presentation/widgets/common/submit_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdRecapPage extends StatelessWidget {
  const PublishAdRecapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PublishAdCubit, PublishAdState>(builder: (context, state) {
      return ScrollViewFill(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: Dimens.paddingLarge),
          const Text('RECAP'),
          const Expanded(child: SizedBox.shrink()),
          SubmitButton(
              title: tr('post'),
              isLoading: state.isLoading,
              onPressed: () => {context.read<PublishAdCubit>().onPostClicked()}),
          const SizedBox(height: Dimens.paddingLarge)
        ],
      ));
    });
  }
}
