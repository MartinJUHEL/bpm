import 'dart:io';

import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/models/photo_model.dart';
import 'package:flutter/material.dart';

class PhotoFrameWidget extends StatelessWidget {
  final PhotoModel photo;
  final Function(PhotoModel photo) delete;

  const PhotoFrameWidget(
      {super.key, required this.photo, required this.delete});

  @override
  Widget build(BuildContext context) {
    logger.d(photo.toString());
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        children: [
          Column(
            children: [
              photo.status.isUploading
                  ? LinearProgressIndicator(
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : const SizedBox(),
              photo.status.isError
                  ? Icon(
                      Icons.error,
                      size: 80,
                      color: Theme.of(context).colorScheme.error,
                    )
                  : photo.status.isUploaded && photo.path != null
                      ? Container(
                          margin: const EdgeInsets.only(left: 3.0, right: 3.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: FileImage(File(photo.path!)),
                            fit: BoxFit.cover,
                          )),
                        )
                      : const Icon(
                          Icons.photo_camera,
                          size: 80,
                          color: Colors.grey,
                        )
            ],
          ),
          Positioned(
              right: -2,
              top: -9,
              child: IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.black.withOpacity(0.5),
                    size: 18,
                  ),
                  onPressed: () => delete(photo)))
        ],
      ),
    );
  }
}
