/**
 * You can use a factory constructor when you don’t need to create a new class instance.
 * One example would be when returning a cached instance:
 */
class Logger {
  static final Map<String, Logger> _cache = <String, Logger>{};

  final String name;

  // Factory constructor that returns a cached copy,
  // or creates a new one if it is not yet available.
  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => _cache[name] ??= Logger._internal(name));
  }

  // Private constructor for internal use only
  Logger._internal(this.name);
}
