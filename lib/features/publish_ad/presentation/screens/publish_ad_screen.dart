import 'package:assoshare/app/appTextStyles.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/domain/entities/city_model.dart';
import 'package:assoshare/features/publish_ad/domain/models/photo_model.dart';
import 'package:assoshare/features/publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_photos_page.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_search_city_page.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/publish_ad_title_page.dart';
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

  _savePhotos(BuildContext context, List<PhotoModel> photos) {
    context.read<PublishAdBloc>().add(PublishAdEvent.savedPhotos(photos));
    _controller.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  _saveCity(BuildContext context, CityModel city) {
    context.read<PublishAdBloc>().add(PublishAdEvent.citySaved(city));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<PublishAdBloc>(),
      child: BlocConsumer<PublishAdBloc, PublishAdState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            Navigator.pop(context);
          }
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
                bottom: PreferredSize(
                  preferredSize: Size(size.width, 0),
                  child: LinearProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                    value: (state.pageIndex + 1) / _pageNumber,
                  ),
                ),
              ),
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  PublishAdTitlePage(submit: () => _moveToNextPage(context)),
                  PublishAdPhotosPage(
                    //todo : adId
                    adId: 'test',
                    submit: (photos) => _savePhotos(context, photos),
                    photos: state.photos,
                  ),
                  PublishAdSearchCityPage(
                    submit: (CityModel city) => _saveCity(context, city),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const _pageNumber = 4;
}
