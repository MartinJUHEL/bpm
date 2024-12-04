import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PhotoPickerModal extends StatelessWidget {
  final VoidCallback onCameraClicked;
  final VoidCallback onGalleryClicked;

  const PhotoPickerModal(
      {super.key,
      required this.onCameraClicked,
      required this.onGalleryClicked});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        children: <Widget>[
          ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('gallery').tr(),
              onTap: () {
                onGalleryClicked();
                Navigator.of(context).pop();
              }),
          ListTile(
            leading: const Icon(Icons.photo_camera),
            title: const Text('camera').tr(),
            onTap: () {
              onCameraClicked();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
