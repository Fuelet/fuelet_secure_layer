extension KotlinObjectX<T> on T {
  /// Calls [func] with `this` passed as a param and returns the result of its execution
  R let<R>(R Function(T) func) => func(this);
}
