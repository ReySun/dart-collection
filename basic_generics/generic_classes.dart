class Cache<T> {
  Map<String, T> _cache = {};

  T? getByKey(String key) {
    return _cache[key];
  }

  void setByKey(String key, T value) {
    _cache[key] = value;
  }
}

main() {
  // Creating a cache for strings
  var stringCache = Cache<String>(); // stringCache has type Cache<String>
  stringCache.setByKey('Foo', 'Bar'); // Valid, setting a string value.
  // stringCache.setByKey('Baz', 5); // Invalid, int type does not match generic.
}
