import 'package:assoshare/domain/usecases/publish_ad/is_ad_description_valid_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IsAdDescriptionValidUseCase', () {
    test('returns true when description is valid', () {
      final useCase = IsAdDescriptionValidUseCase();
      final result = useCase.execute('This is a valid description.');
      expect(result, isTrue);
    });

    test('returns false when description is invalid', () {
      final useCase = IsAdDescriptionValidUseCase();
      final result = useCase.execute('Short');
      expect(result, isFalse);
    });
  });
}
