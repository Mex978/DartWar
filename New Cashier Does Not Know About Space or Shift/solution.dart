String getOrder(String input) {
  final menu = [
    'Burger',
    'Fries',
    'Chicken',
    'Pizza',
    'Sandwich',
    'Onionrings',
    'Milkshake',
    'Coke'
  ];
  List<String> order = [];

  menu.forEach((item) {
    RegExp(item.toLowerCase())
        .allMatches(input.toLowerCase())
        .toList()
        .forEach((_) {
      order.add(item);
    });
  });

  return order
      .toString()
      .replaceAll('[', '')
      .replaceAll(']', '')
      .replaceAll(',', '');
}
