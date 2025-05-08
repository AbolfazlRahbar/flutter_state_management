import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/product/models/product.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
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
