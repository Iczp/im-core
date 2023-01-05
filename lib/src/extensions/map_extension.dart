extension MapExtension on Map<String, dynamic> {
  ///
  Map<String, dynamic> removeNullValue() {
    removeWhere((key, value) => value == null);
    return this;
  }

  ///
  Map<String, dynamic> removeTest(
    bool Function(String, dynamic) test,
  ) {
    removeWhere(test);
    return this;
  }

  ///
  Map<String, dynamic> removeKey(String key) {
    removeWhere((k, v) => k == key);
    return this;
  }
}
