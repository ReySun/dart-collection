// On the top level
int multiply(a, b) {
  return a * b;
}

// As a class field
class Multiplier {
  multiply(a, b) {
    return a * b;
  }
}

// In a local scope
main() {
  multiply(a, b) {
    return a * b;
  }

  print(multiply(3, 4));
}
