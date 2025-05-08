import 'dart:ui';

class Product {
  final String name;
  final String description;
  final double price;
  final Color colors;
  bool isSelected;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.colors,
    this.isSelected = false,
  });
}
