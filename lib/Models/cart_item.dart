class CartItem {
  final String id;
  final String name;
  final int quantity;
  final double price;
  final String imageUrl; // Add this field

  CartItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.imageUrl, // Include it in the constructor
  });

  CartItem copyWith({
    String? id,
    String? name,
    int? quantity,
    double? price,
    String? imageUrl, // Add it here as well
  }) {
    return CartItem(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl, // Copy the image URL
    );
  }
}
