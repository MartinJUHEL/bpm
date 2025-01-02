./tools/generate_import_file_test.sh
fvm flutter test --coverage --dart-define-from-file assets/cfg/app_settings_test.json
cat .coverage_ignore_pattern | xargs lcov --output-file coverage/lcov.cleaned.info --ignore-errors unused --remove coverage/lcov.info
genhtml coverage/lcov.cleaned.info -o coverage/html

