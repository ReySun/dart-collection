/**
 * 集合
 * 
 * 特点：唯一性
 */

main() {
  final fruits = {'apple', 'orange', 'pear'};

  // Add a value
  fruits.add('peach');
  fruits.addAll(['kiwi', 'mango']);

  // remove
  // Remove the value 'pear' from the set.
  fruits.remove('pear');
  // Remove all elements in the supplied list from the set.
  fruits.removeAll(['orange', 'apple']);
  // Removes all elements from the list that match the given predicate.
  fruits.removeWhere((fruit) => fruit.contains('p'));
  // remove all
  fruits.clear();

  // length set
  final fruits2 = {'apple', 'orange', 'pear'};
  assert(fruits2.length == 3);

  // isEmpty or isNotEmpty
  assert(!fruits.isEmpty);
  assert(fruits.isNotEmpty);
}
