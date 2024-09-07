class Product {
  final String id;
  final String name;
  final String image;
  final String description;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'].toDouble(), 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'price': price,
    };
  }
}
