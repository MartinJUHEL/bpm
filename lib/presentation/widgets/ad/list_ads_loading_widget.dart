import 'package:assoshare/presentation/widgets/ad/ad_card_shimmer_widget.dart';
import 'package:assoshare/presentation/widgets/common/base_shimmer.dart';
import 'package:flutter/material.dart';

class ListAdsLoadingWidget extends StatelessWidget {
  const ListAdsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseShimmer(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _itemCount,
      // Adjust the count based on your needs
      itemBuilder: (context, index) {
        return const AdCardShimmerWidget();
      },
    ));
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const int _itemCount = 5;
