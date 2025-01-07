import 'package:assoshare/domain/usecases/publish_ad/is_ad_title_valid_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IsAdTitleValidUseCase', () {
    late IsAdTitleValidUseCase useCase;

    setUp(() {
      useCase = IsAdTitleValidUseCase(); // Create an instance of the use case
    });

    test('returns true for valid title length', () {
      // Arrange
      const validTitle = 'Valid Title';

      // Act
      final result = useCase.execute(validTitle);

      // Assert
      expect(result, true);
    });

    test('returns false for title shorter than 3 characters', () {
      // Arrange
      const shortTitle = 'ab';

      // Act
      final result = useCase.execute(shortTitle);

      // Assert
      expect(result, false);
    });

    test('returns false for title longer than 30 characters', () {
      // Arrange
      const longTitle = 'This is a very long title exceeding 30 characters';

      // Act
      final result = useCase.execute(longTitle);

      // Assert
      expect(result, false);
    });
  });
}
