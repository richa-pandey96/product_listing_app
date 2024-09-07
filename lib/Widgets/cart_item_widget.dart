import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assement1/Models/cart_item.dart';
import 'package:assement1/cart_provider.dart';

class CartItemWidget extends ConsumerWidget {
  final CartItem item;

  CartItemWidget({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Image.network(
        
        item.imageUrl, 
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error, size: 50);
        },
      ),
      title: Text(item.name),
      subtitle: Text(
        'Quantity: ${item.quantity}\nPrice: \$${(item.price * item.quantity).toStringAsFixed(2)}',
      ),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline, color: Colors.red),
        onPressed: () {
          ref.read(cartProvider.notifier).removeFromCart(item.id); 
        },
      ),
    );
  }
}
