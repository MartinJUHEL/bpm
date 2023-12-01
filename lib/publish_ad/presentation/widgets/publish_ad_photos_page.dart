import 'dart:io';

import 'package:bpm/core/di/injection.dart';
import 'package:bpm/publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PublishAdPhotosPage extends StatelessWidget {
  const PublishAdPhotosPage({super.key});

  void _showPicker(context) {
    showBarModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return BlocProvider(
            create: (context) => locator<UploadPhotosBloc>(),
            child: BlocBuilder<UploadPhotosBloc, UploadPhotosState>(
              builder: (context, state) {
                return SafeArea(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: const Icon(Icons.photo_library),
                          title: const Text('gallery').tr(),
                          onTap: () {
                            context.read<UploadPhotosBloc>().add(
                                const UploadPhotosEvent
                                    .pickedImagesFromGallery());
                            Navigator.of(context).pop();
                          }),
                      ListTile(
                        leading: const Icon(Icons.photo_camera),
                        title: const Text('camera').tr(),
                        onTap: () {
                          context
                              .read<UploadPhotosBloc>()
                              .add(
                              const UploadPhotosEvent.pickedImagesFromCamera());
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<UploadPhotosBloc>(),
      child: BlocBuilder<UploadPhotosBloc, UploadPhotosState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: InkWell(
                onTap: () => _showPicker(context),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: state.photos.isNotEmpty
                      ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      itemCount: state.photos.length,
                      itemBuilder: (_, i) =>
                          Container(
                            height: 100,
                            width: 120,
                            margin: const EdgeInsets.only(
                                left: 3.0, right: 3.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: FileImage(File(state.photos[i].path)),
                                  fit: BoxFit.cover,
                                )),
                          ))
                      : const Icon(
                    Icons.photo_camera,
                    size: 80,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
