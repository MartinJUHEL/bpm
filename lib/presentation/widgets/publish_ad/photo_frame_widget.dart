import 'dart:io';

import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:flutter/material.dart';

class PhotoFrameWidget extends StatelessWidget {
  final PhotoEntity photo;
  final VoidCallback onDeleteClicked;

  const PhotoFrameWidget({super.key, required this.photo, required this.onDeleteClicked});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: const EdgeInsets.all(3),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: InkWell(
                  onTap: () {
                    //todo open photoview
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(File(photo.path)),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ))),
        Positioned(
            right: -14,
            top: -14,
            child: IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: Theme.of(context).colorScheme.error,
                  size: 22,
                ),
                onPressed: onDeleteClicked))
      ],
    );
  }
}
