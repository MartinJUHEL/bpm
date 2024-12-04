import 'package:assoshare/app/constants.dart';
import 'package:assoshare/core/presentation/widgets/scroll_view_fill.dart';
import 'package:assoshare/core/presentation/widgets/submit_button.dart';
import 'package:assoshare/features/publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdTitlePage extends StatelessWidget {
  const PublishAdTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<PublishAdCubit, PublishAdState>(
      builder: (context, state) {
        return ScrollViewFill(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Constants.largePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: EdgeInsets.only(bottom: size.height * 0.1)),
              const Text('adTitleInfo').tr(),
              TextFormField(
                  onChanged: (value) {
                    context.read<PublishAdCubit>().onTitleChanged(value);
                  },
                  maxLength: _maxLengthTitle,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: tr('adTitleLabel'),
                    errorText: !state.isTitleValid ? tr('adTitleNotValid') : null,
                    hintText: tr('adTitleLabel'),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  )),
              Padding(padding: EdgeInsets.only(bottom: size.height * 0.08)),
              const Text('adDescriptionInfo').tr(),
              SizedBox(
                width: size.width * 0.8,
                child: TextFormField(
                    onChanged: (value) {
                      context.read<PublishAdCubit>().onDescriptionChanged(value);
                    },
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    maxLength: _maxLengthDescription,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: tr('adDescriptionLabel'),
                      errorText: !state.isDescriptionValid ? tr('adDescriptionNotValid') : null,
                      hintText: tr('adDescriptionLabel'),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    )),
              ),
              Padding(padding: EdgeInsets.only(bottom: size.height * 0.04)),
              const Expanded(child: SizedBox.shrink()),
              SubmitButton(
                  title: tr('next'),
                  isEnabled: state.isTitleValid && state.isDescriptionValid, //Todo put condition in state
                  onPressed: () => context.read<PublishAdCubit>().onMovedToNextPage()),
              const SizedBox(height: Constants.largePadding)
            ],
          ),
        ));
      },
    );
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const _maxLengthTitle = 200;
  static const _maxLengthDescription = 4000;
}
