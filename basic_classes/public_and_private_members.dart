// ignore_for_file: unused_element

/**
 * 以_开始的变量和方法则为私有
 */

class Animal {
  late int eyes; // Public field
  late int _paws; // Private field

  Animal(this.eyes, this._paws);

  void _printEyes() {
    // Private method
    print(this.eyes);
  }

  void printPaws() {
    // Public method
    print(this._paws);
  }
}

main() {
  var a = Animal(1, 2);
  a._printEyes();
  print(a._paws);
  ;
}
