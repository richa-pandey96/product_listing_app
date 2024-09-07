import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assement1/Models/product.dart';

// FutureProvider to load products from a JSON file
final productProvider = FutureProvider<List<Product>>((ref) async {
  final String response = await rootBundle.loadString('assets/products.json');
  final List<dynamic> data = json.decode(response);
  return data.map((item) => Product.fromJson(item)).toList();
});

// StateProvider to manage the search query
final searchProvider = StateProvider<String>((ref) => '');

// Provider to filter products based on the search query
final filteredProductProvider = Provider<List<Product>>((ref) {
  final searchQuery = ref.watch(searchProvider).toLowerCase();
  final productsAsyncValue = ref.watch(productProvider);

  return productsAsyncValue.when(
    data: (products) => products
        .where((product) => product.name.toLowerCase().contains(searchQuery))
        .toList(),
    loading: () => [],
    error: (error, stack) => [],
  );
});
