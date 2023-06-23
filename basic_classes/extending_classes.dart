class Animal {
  int eyes;

  Animal(this.eyes);

  makeNoise() {
    print('???');
  }
}

class Cat extends Animal {
  Cat() : super(2);

  @override
  makeNoise() {
    print('Meow');
    // 被重写的父类方法也可以被调用
    super.makeNoise();
  }
}

main() {
  Animal animal = Cat();
  print(animal.eyes); // 2
  animal.makeNoise(); // Meow
}
