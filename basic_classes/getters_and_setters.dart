class Person {
  int _age = 0;

  int get age {
    return _age;
  }

  set age(int value) {
    if (value < 0) {
      throw ArgumentError('Age cannot be negative');
    }
    _age = value;
  }
}

void main() {
  var person = Person();
  person.age = 10;
  print(person.age);
}
