/**
 * mixins
 * 可以在多个类中共享方法，使用with关键词，
 * 一个类可以关联多个mixin
 */

abstract class Animal {}

// 使用mixin关键词代替class，可以保护不像class那样使用
mixin Flyer {
  fly() => print('Flaps wings');
}

mixin Walker {
  walk() => print('Walks on legs');
}

class Bat extends Animal with Flyer {}

class Goose extends Animal with Flyer, Walker {}

class Dog extends Animal with Walker {}
