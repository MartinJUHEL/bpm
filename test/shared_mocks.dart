import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This file is used to generate shared mocks for multiple test files.

@GenerateMocks([UserRepository, Logger, SharedPreferences])
void main() {} // Empty main function is required for mock generation
