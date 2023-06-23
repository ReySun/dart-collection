/**
 * 稍后初始化参数late
 * 注意：
 * 1. 使用late之后，参数不可为可空参数
 * 2. 使用late的参数，使用之前未初始化会报错
 */
class PetOwner {
  final String name;
  late final Pet _pet;
  PetOwner(this.name, String petName) {
    // Cyclic object graph, cannot set _pet before owner exists.
    _pet = Pet(petName, this);
  }
  Pet get pet => _pet;
}

class Pet {
  final String name;
  final PetOwner owner;
  Pet(this.name, this.owner);
}

// doSomething(int n, bool capture) {
//   late List<Foo> captures;
//   if (capture) captures = [];
//   for (var i = 0; i < n; i++) {
//     var foo = something(i);
//     if (capture) captures.add(foo);
//   }
// }