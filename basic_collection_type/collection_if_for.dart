main() {
  print(isOutletUseIf(true));
  print(isOutletUseIf(false));

  print(formatList([1, 2, 3]));
}

/**
 * collection if
 * It works similarly for maps and sets.
 */
isOutletUseIf(bool isOutlet) {
  //
  var nav = [
    'Home',
    'Furniture',
    'Plants',
    if (isOutlet) 'Outlet',
  ];
  return nav;
}

/**
 * collection for
 * This also works in the same way for maps and sets.
 */
formatList(List<int> list) {
  return [
    '#0',
    for (var i in list) '#$i',
  ];
}
