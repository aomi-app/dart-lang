extension StringExtension on String? {
  bool get isEmpty {
    return this == null || this.isEmpty;
  }

  bool get isEmptyOrNull {
    return this == null || this!.isEmpty;
  }

  bool get isNotEmpty {
    return this != null && this.isNotEmpty;
  }
}
