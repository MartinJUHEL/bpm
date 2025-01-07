import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/presentation/widgets/common/page_number_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotoPagerScreen extends StatefulWidget {
  const PhotoPagerScreen({super.key, required this.photosUrl});

  final List<String> photosUrl;

  @override
  State<PhotoPagerScreen> createState() => _PhotoPagerScreenState();
}

class _PhotoPagerScreenState extends State<PhotoPagerScreen> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          PageView(
            onPageChanged: _handlePageViewChanged,
            children: widget.photosUrl.map((url) => CachedNetworkImage(imageUrl: url)).toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimens.paddingPage),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: PageNumberImage(pageNumber: widget.photosUrl.length, currentPageIndex: _currentPageIndex + 1)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimens.paddingLarge),
            child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                )),
          )
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }
}
