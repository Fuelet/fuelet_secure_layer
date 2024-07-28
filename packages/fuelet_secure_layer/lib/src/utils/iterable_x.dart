extension IterableX<T> on Iterable<T> {
  /// Returns the first element that satisfies the given predicate [test] or null
  T? firstWhereOrNull(bool Function(T selector) predicate) {
    for (final element in this) {
      if (predicate(element)) return element;
    }
    return null;
  }
}
