extension StringExtension on String {
  String toUCFirst() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
