import 'package:assoshare/app/appTextStyles.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/domain/entities/ad_entity.dart';
import 'package:assoshare/features/publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_photos_page.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_price_page.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_recap_page.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_search_city_page.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_select_type.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_title_page.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdScreen extends StatefulWidget {
  const PublishAdScreen({super.key});

  @override
  State<PublishAdScreen> createState() => _PublishAdScreenState();
}

class _PublishAdScreenState extends State<PublishAdScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<PublishAdCubit>(),
      child: BlocConsumer<PublishAdCubit, PublishAdState>(
        listener: (context, state) {
          //todo finish when add created
          _controller.animateToPage(state.pageIndex, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
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
                      context.read<PublishAdCubit>().onMovedToPreviousPage();
                    }
                  },
                ),
                bottom: PreferredSize(
                  preferredSize: Size(size.width, 0),
                  child: LinearProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                    value: (state.pageIndex + 1) / state.getPageNumber(),
                  ),
                ),
              ),
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  const PublishAdSelectType(),
                  const PublishAdTitlePage(),
                  PublishAdPhotosPage(
                    //todo : adId
                    adId: 'test',
                    submit: (photos) => context.read<PublishAdCubit>().onSavedPhotos(photos),
                    photos: state.photos,
                  ),
                  PublishAdSearchCityPage(
                    submit: (CityEntity city) => context.read<PublishAdCubit>().onCitySaved(city),
                  ),
                  if (state.adType == AdType.rent) const PublishAdPricePage(),
                  const PublishAdRecapPage()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
