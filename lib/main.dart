import 'dart:ui';
import 'package:assement1/Screen/product_detail_screen.dart';
import 'package:assement1/Widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assement1/Screen/product_list_screen.dart';
import 'package:assement1/Screen/cart_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(),
        '/cart': (context) => CartScreen(),
        
      },
    );
  }
}
