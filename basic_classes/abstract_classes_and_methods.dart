/**
 * 抽象类
 */
abstract class Consumer {
  consume();
}

// Extending the full class
class Dog extends Consumer {
  consume() {
    print('Eating cookies...');
  }
}

// Just implementing the interface
class Cat implements Consumer {
  consume() {
    print('Eating mice...');
  }
}

main() {
  Consumer consumer;
  consumer = Dog();
  consumer.consume(); // Eating cookies...
  consumer = Cat();
  consumer.consume(); // Eating mice...
}
