import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:assoshare/presentation/blocs/publish_ad/pick_photos_bloc/pick_photos_bloc_cubit.dart';
import 'package:assoshare/presentation/widgets/common/submit_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'photo_frame_widget.dart';
import 'photo_picker_modal.dart';

class PublishAdPhotosPage extends StatelessWidget {
  final Function(List<PhotoEntity> photos) submit;
  final List<PhotoEntity> photos;

  const PublishAdPhotosPage({super.key, required this.submit, required this.photos});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<PickPhotosBlocCubit>(),
      child: BlocConsumer<PickPhotosBlocCubit, PickPhotosBlocState>(
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
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // number of items in each row
                          mainAxisSpacing: 10.0, // spacing between rows
                          crossAxisSpacing: 10.0, // spacing between columns
                        ),
                        itemCount: state.photos.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return _buildAddPhotoCard(context);
                          } else {
                            PhotoEntity photo = state.photos[index - 1];
                            return PhotoFrameWidget(
                                photo: photo,
                                onDeleteClicked: () => context.read<PickPhotosBlocCubit>().onImageRemoved(photo));
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
                    child: SubmitButton(title: tr('next'), onPressed: () => submit(state.photos)),
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
                return PhotoPickerModal(
                    onCameraClicked: () => context.read<PickPhotosBlocCubit>().onPickedImagesFromCamera(),
                    onGalleryClicked: () => context.read<PickPhotosBlocCubit>().onPickedImagesFromGallery());
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
