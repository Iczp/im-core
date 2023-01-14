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

  ///
  T? max(dynamic Function(T) act) {
    if (length == 0) {
      return null;
    }
    var maxItem = reduce((curr, next) =>
        (act(curr) as num).toDouble() > (act(next) as num).toDouble()
            ? curr
            : next);

    return maxItem;
  }

  ///
  T? min(dynamic Function(T) act) {
    if (length == 0) {
      return null;
    }
    var maxItem = reduce((curr, next) =>
        (act(curr) as num).toDouble() < (act(next) as num).toDouble()
            ? curr
            : next);

    return maxItem;
  }
}
