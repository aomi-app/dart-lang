import 'dart:ui';

extension StringExtension on String? {
  bool get isEmpty {
    return this == null || this!.isEmpty;
  }

  bool get isEmptyOrNull {
    return this == null || this!.isEmpty;
  }

  bool get isNotEmpty {
    return this != null && (this ?? '').isNotEmpty;
  }

  int get length {
    return this == null ? 0 : this!.length;
  }

  bool contains(Pattern other, [int startIndex = 0]) {
    return this == null ? false : this!.contains(other, startIndex);
  }
}

extension ColorStringExtensions on String {
  Color? toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
    return null;
  }
}
