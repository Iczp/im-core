class Checker {
  /// 是否 josn
  static bool isJson(String input) {
    RegExp jsonRegex = RegExp(
      r'^\s*(?:\{.*\}|\[.*\])\s*$',
      multiLine: true,
      caseSensitive: true,
    );
    bool isJson = jsonRegex.hasMatch(input);
    return isJson;
  }

  /// 是否 数字
  static bool isNumeric(
    String? input, {
    int? minLength,
    int? maxLength,
  }) {
    if (input == null) {
      return false;
    }
    var value = double.tryParse(input);
    if (value != null) {
      return false;
    }
    bool ret = true;
    var length = value?.toString().length ?? 0;
    if (ret && minLength != null) {
      ret = ret && length >= minLength;
    }
    if (ret && maxLength != null) {
      ret = ret && length <= maxLength;
    }
    return ret;
  }
}
