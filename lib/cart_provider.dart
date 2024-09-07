import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assement1/Models/cart_item.dart';
import 'package:assement1/Models/product.dart';

// StateNotifier to manage cart items
class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addToCart(Product product) {
    final cartItemIndex = state.indexWhere((item) => item.id == product.id);

    if (cartItemIndex != -1) {
      final updatedCartItem = state[cartItemIndex].copyWith(
        quantity: state[cartItemIndex].quantity + 1,
      );
      state = [
        ...state.sublist(0, cartItemIndex),
        updatedCartItem,
        ...state.sublist(cartItemIndex + 1),
      ];
    } else {
      state = [
        ...state,
        CartItem(
          id: product.id,
          name: product.name,
          price: product.price,
          quantity: 1,
          imageUrl: product.image, // Pass the image URL here
        ),
      ];
    }
  }

  void removeFromCart(String productId) {
    state = state.where((item) => item.id != productId).toList();
  }

  void updateQuantity(String productId, int quantity) {
    final cartItemIndex = state.indexWhere((item) => item.id == productId);
    if (cartItemIndex != -1 && quantity > 0) {
      final updatedCartItem = state[cartItemIndex].copyWith(quantity: quantity);
      state = [
        ...state.sublist(0, cartItemIndex),
        updatedCartItem,
        ...state.sublist(cartItemIndex + 1),
      ];
    } else if (quantity == 0) {
      removeFromCart(productId);
    }
  }

  double get totalPrice => state.fold(
      0, (sum, item) => sum + (item.price * item.quantity));
}

// Provider to access cart state
final cartProvider = StateNotifierProvider<CartNotifier, List<CartItem>>(
    (ref) => CartNotifier());
