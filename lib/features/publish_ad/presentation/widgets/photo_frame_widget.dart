import 'package:bpm/features/publish_ad/domain/models/photo_model.dart';
import 'package:flutter/material.dart';

class PhotoFrameWidget extends StatelessWidget {
  final PhotoModel photo;

  const PhotoFrameWidget({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          photo.status.isError
              ? Center(
                  child: Icon(
                    Icons.error,
                    size: 80,
                    color: Theme.of(context).colorScheme.error,
                  ),
                )
              : photo.status.isUploaded && photo.url != null
                  ? InkWell(
                      onTap: () {
                        //todo open photoview
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(photo.url!),
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    )
                  : const Center(
                      child: Icon(
                        Icons.photo_camera,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
          photo.status.isUploading
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
