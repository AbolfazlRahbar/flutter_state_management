import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_management/features/product/constans/product_constans.dart';
import 'package:flutter_state_management/features/product/widgets/product_tile.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (_) => CartScreen(
                        cartItems:
                            productList
                                .where((product) => product.isSelected)
                                .toList(),
                      ),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return ProductTile(
            product: product,
            onChanged: (value) {
              setState(() {
                product.isSelected = value ?? false;
              });
            },
          );
        },
      ),
    );
  }
}
