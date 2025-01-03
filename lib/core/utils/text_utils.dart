const String empty = '';
const String unknown = '...';
const String slash = '/';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String buildHeroTag(String id) {
    return '$this$id';
  }
}
