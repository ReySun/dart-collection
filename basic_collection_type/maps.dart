/**
 * 类似于js中的对象
 */

final gifts = {
  'first': 'partridge',
  'second': 'turtle doves',
  'fifth': 'golden rings'
};

final nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// Map using the index operator
final gifts2 = {'first': 'partridge'};
final gift = gifts2['first'];

main() {
  final gifts = {'first': 'partridge'};

  // containsKey判断是否有该属性
  assert(gifts.containsKey('fifth'));

  // 添加属性
  gifts['second'] = 'turtle';
  gifts.addAll({
    'second': 'turtle doves',
    'fifth': 'golden rings',
  });
  gifts.addEntries([
    MapEntry('second', 'turtle doves'),
    MapEntry('fifth', 'golden rings'),
  ]);

  // 修改属性
  gifts['second'] = 'turtle doves';

  // remove
  gifts.remove('first');
  gifts.removeWhere((key, value) => value == 'partridge');

  // length
  print(gifts.length);

  // isEmpty or isNotEmpty
  print(gifts.isEmpty);
  print(gifts.isNotEmpty);
}
