import 'package:assoshare/domain/entities/ad/ad_entity.dart';

import 'city_entity.dart';

final defaultAd = AdEntity(
  id: 'test1',
  title: 'Test Ad',
  description: 'This is a test ad.',
  price: 100.0,
  adType: AdType.rent,
  photosUrl: const ['photo1.jpg', 'photo2.jpg'],
  city: defaultCity,
  renterId: 'user123',
  renterName: 'John Doe',
  renterPhotoUrl: 'profile.jpg',
  creationDate: DateTime(2023, 10, 27),
);
