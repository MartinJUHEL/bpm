import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdSelectType extends StatelessWidget {
  const PublishAdSelectType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              onPressed: () => context.read<PublishAdCubit>().onAdTypeSelected(AdType.loan),
              child: const Text('loan').tr(),
            ),
            OutlinedButton(
              onPressed: () => context.read<PublishAdCubit>().onAdTypeSelected(AdType.rent),
              child: const Text('rent').tr(),
            ),
          ],
        ),
      ),
    );
  }
}
