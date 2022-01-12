import 'dart:math';

import 'package:coffee_scroll/coffee_model.dart';

double _doubleInRange(Random src, num start, num end) =>
    src.nextDouble() * (end - start) + start;
final random = Random();
final _names = [
  'Caramel Cold Drink',
  'Iced Coffee Mocha',
  'Caramelized Pecan Latte',
  'Toffee Nut Latte',
  'Capuchino',
  'Toffee Nut Iced Latte',
  'Americano',
  'Caramel Macchiato',
  'Vietnamese-Style Iced Coffee',
  'Black Tea Latte',
];

final coffees = List.generate(
  _names.length,
  (index) => Coffee(
    image: 'assets/coffee/${index + 1}.png',
    name: _names[index],
    price: _doubleInRange(random, 3, 7),
  ),
);
