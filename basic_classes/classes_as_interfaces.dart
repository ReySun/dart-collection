/**
 * class 可以直接被实现，被当作类型如interfaces处理
 * 
 * 被实现的类不能调用super
 */

class Consumer {
  consume() {
    print('Eating food...');
  }
}

class Cat implements Consumer {
  @override
  consume() {
    print('Eating mice...');
  }
}

main() {
  Consumer consumer = Cat();
  consumer.consume(); // Eating mice
}
