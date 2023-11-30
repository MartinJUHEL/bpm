import 'package:bpm/core/presentation/widgets/submit_button.dart';
import 'package:bpm/publish_ad/presentation/bloc/publish_ad_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdTitlePage extends StatelessWidget {
  final VoidCallback submit;

  const PublishAdTitlePage({super.key, required this.submit});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<PublishAdBloc, PublishAdState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: EdgeInsets.only(bottom: size.height * 0.1)),
            const Text('adTitleInfo').tr(),
            SizedBox(
              width: size.width * 0.8,
              child: TextFormField(
                  onChanged: (value) {
                    context
                        .read<PublishAdBloc>()
                        .add(PublishAdEvent.titleChanged(value));
                  },
                  maxLength: _maxLengthTitle,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: tr('adTitleLabel'),
                    errorText: !state.isTitleValid ? tr('adTitleNotValid') : null,
                    hintText: tr('adTitleLabel'),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                  )),
            ),
            Padding(padding: EdgeInsets.only(bottom: size.height * 0.08)),
            const Text('adDescriptionInfo').tr(),
            SizedBox(
              width: size.width * 0.8,
              child: TextFormField(
                  onChanged: (value) {
                    context
                        .read<PublishAdBloc>()
                        .add(PublishAdEvent.descriptionChanged(value));
                  },
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  maxLength: _maxLengthDescription,
                  decoration: InputDecoration(
                    labelText: tr('adDescriptionLabel'),
                    errorText: !state.isDescriptionValid
                        ? tr('adDescriptionNotValid')
                        : null,
                    hintText: tr('adDescriptionLabel'),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                  )),
            ),
            Padding(padding: EdgeInsets.only(bottom: size.height * 0.04)),
            SubmitButton(
                title: 'next',
                isEnabled: state.isTitleValid && state.isDescriptionValid,
                isLoading: state.status.isLoading,
                onPressed: () => submit())
          ],
        );
      },
    );
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const _maxLengthTitle = 200;
  static const _maxLengthDescription = 4000;
}
