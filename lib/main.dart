import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/product/screens/product_list_screen.dart';
import 'package:flutter_state_management/providers/product_provider.dart';
import 'package:provider/provider.dart';

/*
 add provider:
 1. use MultiProvider as root
 2. create provider for each state
 3. add providers created to multiprovider
 4. use provider...
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: ProductListScreen(),
      ),
    );
  }
}
