import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/product/models/product.dart';
import 'package:flutter_state_management/providers/product_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  CartScreen();

  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<ProductProvider>(context).selectedProduct;

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body:
          cartItems.isEmpty
              ? Center(child: Text('your cart is empty.'))
              : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartItems[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: product.colors,
                      child: Text(product.name[0]),
                    ),
                    title: Text(product.name),
                    subtitle: Text(product.description),
                    trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                  );
                },
              ),
    );
  }
}
