extension StringExtension on String {
  ///
  bool isJson() {
    RegExp jsonRegex = RegExp(
      r'^\s*(?:\{.*\}|\[.*\])\s*$',
      multiLine: true,
      caseSensitive: true,
    );
    bool isJson = jsonRegex.hasMatch(this);
    return isJson;
  }
}
