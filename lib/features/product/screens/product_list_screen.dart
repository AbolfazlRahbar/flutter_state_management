import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_management/features/product/widgets/product_tile.dart';
import 'package:flutter_state_management/providers/product_provider.dart';
import 'package:provider/provider.dart';

/*
use:
provider.of(), Consumer()
context.watch(), context.read()
 */
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
      body: ListView.builder(
        itemCount: context.watch<ProductProvider>().products.length,
        itemBuilder: (context, index) {
          final product = context.watch<ProductProvider>().products[index];
          return ProductTile(
            product: product,
            onChanged: (value) {
              // function call, onTap
              context.read<ProductProvider>().toggleProductSelection(product);
            },
          );
        },
      ),
    );
  }
}
