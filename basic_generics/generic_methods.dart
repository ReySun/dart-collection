Map<Object?, Object?> _cache = {};
T cache<T>(T value) => (_cache[value] ??= value) as T;

// Defining a method with multiple generics.
T transform<T, Q>(T param1, Q param2) {
  return param1;
}

main() {
  cache<int>(2);

  // Calling the method with explicitly defined types.
  transform<int, String>(5, 'string value');

// Types are optional when the analyzer can infer them.
  transform(5, 'string value');
}
