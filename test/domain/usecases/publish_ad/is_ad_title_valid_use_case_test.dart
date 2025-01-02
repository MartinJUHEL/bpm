import 'package:assoshare/domain/usecases/publish_ad/is_ad_title_valid_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IsAdTitleValidUseCase', () {
    test('returns true when title is valid', () {
      final useCase = IsAdTitleValidUseCase();
      final result = useCase.execute('Valid Title');
      expect(result, isTrue);
    });

    test('returns false when title is invalid', () {
      final useCase = IsAdTitleValidUseCase();
      final result = useCase.execute('In');
      expect(result, isFalse);
    });
  });
}
