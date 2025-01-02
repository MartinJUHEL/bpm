import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:assoshare/domain/usecases/publish_ad/pick_photo_from_camera_use_case.dart';
import 'package:assoshare/domain/usecases/publish_ad/pick_photos_from_gallery_use_case.dart';
import 'package:assoshare/presentation/blocs/publish_ad/pick_photos_bloc/pick_photos_bloc_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'pick_photos_bloc_test.mocks.dart';

@GenerateMocks([PickPhotoFromCameraUseCase, PickPhotosFromGalleryUseCase])
void main() {
  late MockPickPhotoFromCameraUseCase mockPickPhotoFromCameraUseCase;
  late MockPickPhotosFromGalleryUseCase mockPickPhotosFromGalleryUseCase;
  late PickPhotosBlocCubit cubit;

  final photo1 = PhotoEntity.fromFile(XFile('path/to/file1'));
  final photo2 = PhotoEntity.fromFile(XFile('path/to/file2'));

  setUp(() {
    mockPickPhotoFromCameraUseCase = MockPickPhotoFromCameraUseCase();
    mockPickPhotosFromGalleryUseCase = MockPickPhotosFromGalleryUseCase();
    cubit = PickPhotosBlocCubit(mockPickPhotoFromCameraUseCase, mockPickPhotosFromGalleryUseCase);
  });

  group('PickPhotosBlocCubit', () {
    blocTest<PickPhotosBlocCubit, PickPhotosBlocState>(
      'emits updated state with new photo when onPickedImagesFromCamera is called',
      build: () {
        final file = XFile('path/to/file');
        when(mockPickPhotoFromCameraUseCase.execute()).thenAnswer((_) async => file);
        return cubit;
      },
      act: (cubit) => cubit.onPickedImagesFromCamera(),
      expect: () => [
        PickPhotosBlocState(photos: [PhotoEntity.fromFile(XFile('path/to/file'))]),
      ],
    );

    blocTest<PickPhotosBlocCubit, PickPhotosBlocState>(
      'emits updated state with new photos when onPickedImagesFromGallery is called',
      build: () {
        final files = [XFile('path/to/file1'), XFile('path/to/file2')];
        when(mockPickPhotosFromGalleryUseCase.execute()).thenAnswer((_) async => files);
        return cubit;
      },
      act: (cubit) => cubit.onPickedImagesFromGallery(),
      expect: () => [
        PickPhotosBlocState(photos: [
          PhotoEntity.fromFile(XFile('path/to/file1')),
          PhotoEntity.fromFile(XFile('path/to/file2')),
        ]),
      ],
    );

    blocTest<PickPhotosBlocCubit, PickPhotosBlocState>(
      'emits updated state with photo removed when onImageRemoved is called',
      build: () {
        cubit.emit(PickPhotosBlocState(photos: [photo1, photo2])); // Set initial state
        return cubit;
      },
      act: (cubit) => cubit.onImageRemoved(photo1),
      expect: () => [
        PickPhotosBlocState(photos: [photo2]),
      ],
    );
  });
}
