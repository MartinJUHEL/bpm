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

  void _showPicker(context) {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<UploadPhotosBloc>(),
      child: BlocConsumer<UploadPhotosBloc, UploadPhotosState>(
        listener: (context, state) {
          logger.d(state.status.toString());
          logger.d(state.photos.toString());
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                Padding(padding: EdgeInsets.only(bottom: size.height * 0.02)),
                const Text('addPhotos').tr(),
                Flexible(
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        mainAxisSpacing: 8.0, // spacing between rows
                        crossAxisSpacing: 8.0, // spacing between columns
                      ),
                      itemCount: state.photos.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return InkWell(
                            onTap: () => showBarModalBottomSheet(
                                context: context,
                                builder: (BuildContext modalContext) {
                                  return BlocProvider.value(
                                      value: BlocProvider.of<UploadPhotosBloc>(
                                          context),
                                      child: PhotoPickerModal(
                                          onCameraClicked: () => context
                                              .read<UploadPhotosBloc>()
                                              .add(UploadPhotosEvent
                                                  .pickedImagesFromCamera(
                                                      adId)),
                                          onGalleryClicked: () => context
                                              .read<UploadPhotosBloc>()
                                              .add(UploadPhotosEvent
                                                  .pickedImagesFromGallery(adId))));
                                }),
                            child: const SizedBox(
                                height: 200,
                                width: 200,
                                child: Icon(
                                  Icons.photo_camera,
                                  size: 80,
                                  color: Colors.grey,
                                )),
                          );
                        } else {
                          return PhotoFrameWidget(
                              photo: state.photos[index - 1],
                              delete: (PhotoModel photo) => context
                                  .read<UploadPhotosBloc>()
                                  .add(UploadPhotosEvent.removedPhoto(photo)));
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
          );
        },
      ),
    );
  }
}
