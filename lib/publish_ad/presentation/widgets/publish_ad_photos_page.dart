import 'dart:io';

import 'package:bpm/core/di/injection.dart';
import 'package:bpm/core/presentation/widgets/submit_button.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/models/photo_model.dart';
import 'package:bpm/publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart';
import 'package:bpm/publish_ad/presentation/widgets/photo_frame_widget.dart';
import 'package:bpm/publish_ad/presentation/widgets/photo_picker_modal.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PublishAdPhotosPage extends StatelessWidget {
  final Function(List<PhotoModel> photos) submit;
  final String adId;

  const PublishAdPhotosPage(
      {super.key, required this.submit, required this.adId});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<UploadPhotosBloc>(),
      child: BlocConsumer<UploadPhotosBloc, UploadPhotosState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: size.height * 0.02)),
                  const Text('addPhotos').tr(),
                  Padding(padding: EdgeInsets.only(bottom: size.height * 0.02)),
                  Flexible(
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // number of items in each row
                          mainAxisSpacing: 10.0, // spacing between rows
                          crossAxisSpacing: 10.0, // spacing between columns
                        ),
                        itemCount: state.photos.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return _buildAddPhotoCard(context);
                          } else {
                            PhotoModel photo = state.photos[index - 1];
                            return Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(3),
                                  child: PhotoFrameWidget(
                                    photo: photo,
                                  ),
                                ),
                                Positioned(
                                    right: -14,
                                    top: -14,
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.cancel,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          size: 22,
                                        ),
                                        onPressed: () => context
                                            .read<UploadPhotosBloc>()
                                            .add(UploadPhotosEvent.removedPhoto(
                                                index - 1))))
                              ],
                            );
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
                    child: SubmitButton(
                        title: 'next',
                        isLoading: state.status.isLoading,
                        onPressed: () => submit(state.photos)),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container _buildAddPhotoCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          onTap: () => showBarModalBottomSheet(
              context: context,
              builder: (BuildContext modalContext) {
                return BlocProvider.value(
                    value: BlocProvider.of<UploadPhotosBloc>(context),
                    child: PhotoPickerModal(
                        onCameraClicked: () => context
                            .read<UploadPhotosBloc>()
                            .add(
                                UploadPhotosEvent.pickedImagesFromCamera(adId)),
                        onGalleryClicked: () => context
                            .read<UploadPhotosBloc>()
                            .add(UploadPhotosEvent.pickedImagesFromGallery(
                                adId))));
              }),
          child: const SizedBox(
              child: Icon(
            Icons.add_a_photo,
            size: 80,
            color: Colors.grey,
          )),
        ),
      ),
    );
  }
}
