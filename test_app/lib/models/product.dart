class Product {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'Product{id: $id, name: $name, price: $price, description: $description}';
  }
}
