class Product {
  final String id;
  final String title;
  final int price;
  final String image;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
