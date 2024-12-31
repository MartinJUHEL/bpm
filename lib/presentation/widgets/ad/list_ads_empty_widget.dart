import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ListAdsEmptyWidget extends StatelessWidget {
  const ListAdsEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [const Text('noAd').tr()],
      ),
    );
  }
}
