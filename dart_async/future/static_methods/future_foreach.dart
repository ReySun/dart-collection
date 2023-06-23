/**
 * Future.forEach
 * 
 * forEach方法就是根据某个集合，创建一系列的Future，
 * 然后再按照创建的顺序执行这些Future. Future.forEach有两个参数:
 * 1. 一个是 Iterable 集合对象
 * 2. 另一个就是带有迭代元素参数的Function方法
 * 
 * 查看源码，其实就是对Future.doWhile的二次封装
 */
main() {
  Future.forEach([1, 2, 3, 4, 5], (int intNum) {
    return Future.delayed(
        Duration(seconds: intNum), () => print('this is $intNum'));
  });
}
