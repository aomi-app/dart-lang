extension StringExtension on String? {
  bool get isEmpty {
    return this == null || this.isEmpty;
  }

  bool get isEmptyOrNull {
    return this == null || this!.isEmpty;
  }

  bool get isNotEmpty {
    return this != null && (this ?? '').isNotEmpty;
  }

  int get length {
    return this == null ? 0 : this.length;
  }

  bool contains(Pattern other, [int startIndex = 0]) {
    return this == null ? false : this.contains(other, startIndex);
  }
}
