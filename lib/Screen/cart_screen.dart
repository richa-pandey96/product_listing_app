import 'package:assement1/Models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assement1/cart_provider.dart';

class CartScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider); // Access the cart items from the provider
    final cartNotifier = ref.read(cartProvider.notifier); // Access the cart notifier for actions
    final totalPrice = cartNotifier.totalPrice; // Calculate total price

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final cartItem = cartItems[index];
                      
                      // Debugging line: Check if cartItem.id is accessible
                      debugPrint('CartItem ID: ${cartItem.id}');
                      
                      return ListTile(
                        leading: cartItem.imageUrl.isNotEmpty
                            ? Image.network(cartItem.imageUrl) // Display product image
                            : null,
                        title: Text(cartItem.name),
                        subtitle: Text(
                          'Quantity: ${cartItem.quantity}\nPrice: \$${(cartItem.price * cartItem.quantity).toStringAsFixed(2)}',
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                if (cartItem.quantity > 1) {
                                  cartNotifier.updateQuantity(cartItem.id, cartItem.quantity - 1);
                                }
                              },
                            ),
                            Text('${cartItem.quantity}'),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                cartNotifier.updateQuantity(cartItem.id, cartItem.quantity + 1);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                cartNotifier.removeFromCart(cartItem.id);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // 
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price:',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}