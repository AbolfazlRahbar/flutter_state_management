// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/product/models/product.dart';

class ProductProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Product> _product = [
    Product(
      name: 'Wireless Headphone',
      description: 'Experience premium sound quality with noise cancellation.',
      price: 120.0,
      colors: Colors.redAccent,
    ),

    Product(
      name: 'SmartPhone',
      description:
          'the latest technology with stunning display and high-speed performance.',
      price: 799.0,
      colors: Colors.blueAccent,
    ),

    Product(
      name: 'Gaming Laptop',
      description:
          'hight-end gaming laptop with cutting-edge graphics and speed.',
      price: 1500.0,
      colors: Colors.greenAccent,
    ),

    Product(
      name: 'Smartwatch',
      description: 'track, your health and fitness with style and precision.',
      price: 250.0,
      colors: Colors.orangeAccent,
    ),

    Product(
      name: 'Electric Kettle',
      description:
          'fast and energy-efficient kettle for your prefect tea or coffe.',
      price: 30.0,
      colors: Colors.purpleAccent,
    ),

    Product(
      name: 'Air Purifier',
      description: 'Breathe clean air with this advanced filteration system.',
      price: 200.0,
      colors: Colors.cyanAccent,
    ),

    Product(
      name: 'Bluetooth Speacker',
      description:
          'protable speacker with powerful sound and long battery life.',
      price: 80.0,
      colors: Colors.pinkAccent,
    ),

    Product(
      name: '4k LED TV',
      description:
          'Immerse yourself in stunning with ultra-high-definition display.',
      price: 900.0,
      colors: Colors.tealAccent,
    ),

    Product(
      name: 'Digital Camera',
      description: 'capture every moment with professional-grade clarity.',
      price: 650.0,
      colors: Colors.yellowAccent,
    ),

    Product(
      name: 'Coffe Maker',
      description: 'Brew barista-quality coffe in the comfort of your home',
      price: 150.0,
      colors: Colors.brown,
    ),
  ];

  List<Product> get products => _product;

  void toggleProductSelection(Product product) {
    product.isSelected = !product.isSelected;
    notifyListeners();
  }

  List<Product> get selectedProduct =>
      _product.where((product) => product.isSelected).toList();
}
