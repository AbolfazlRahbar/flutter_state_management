import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_management/features/product/widgets/product_tile.dart';
import 'package:flutter_state_management/providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (_) => CartScreen()));
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Consumer<ProductProvider>(
        builder: (context, productProvider, _) {
          return ListView.builder(
            itemCount: productProvider.products.length,
            itemBuilder: (context, index) {
              final product = productProvider.products[index];
              return ProductTile(
                product: product,
                onChanged: (value) {
                  productProvider.toggleProductSelection(product);
                },
              );
            },
          );
        },
      ),
    );
  }
}
