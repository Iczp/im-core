extension IterableExtansion<T> on Iterable<T> {
  ///
  T? firstOrNull(bool Function(T)? test) {
    if (test == null) {
      return cast<T?>().first;
    }
    return cast<T?>()
        .firstWhere((v) => v != null && test(v), orElse: () => null);
  }

  ///
  T? lastOrNull(bool Function(T)? test) {
    if (test == null) {
      return cast<T?>().last;
    }
    return cast<T?>()
        .firstWhere((v) => v != null && test(v), orElse: () => null);
  }
}
