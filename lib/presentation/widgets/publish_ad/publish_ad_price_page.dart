import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:assoshare/presentation/widgets/common/scroll_view_fill.dart';
import 'package:assoshare/presentation/widgets/common/submit_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdPricePage extends StatelessWidget {
  const PublishAdPricePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<PublishAdCubit, PublishAdState>(
      builder: (context, state) {
        return ScrollViewFill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: EdgeInsets.only(bottom: size.height * 0.1)),
            const Text('rentalPriceTitle').tr(),
            TextFormField(
                onChanged: (value) {
                  int intPrice = int.tryParse(value) ?? 0;
                  context.read<PublishAdCubit>().onPriceChanged(intPrice);
                },
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: tr('rentalPriceLabel'),
                  hintText: tr('rentalPriceLabel'),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                )),
            const SizedBox(height: Dimens.paddingLarge),
            const Expanded(child: SizedBox.shrink()),
            SubmitButton(title: tr('next'), onPressed: () => {context.read<PublishAdCubit>().onMovedToNextPage()}),
            const SizedBox(height: Dimens.paddingLarge)
          ],
        ));
      },
    );
  }
}
