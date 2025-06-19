import 'package:lacedup/models/product.dart';
import 'package:riverpod/riverpod.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Balenciaga Speed',
    price: 3800,
    image: 'assets/products/Balenciaga_Speed.jpeg',
  ),
  // Product(id: '2', title: 'title', price: price, image: image),
  // Product(id: '3', title: 'title', price: price, image: image),
  // Product(id: '4', title: 'title', price: price, image: image),
  // Product(id: '5', title: 'title', price: price, image: image),
  // Product(id: '6', title: 'title', price: price, image: image),
  // Product(id: '7', title: 'title', price: price, image: image),
  // Product(id: '8', title: 'title', price: price, image: image),
];

final productProvider = Provider((ref) {
  return allProducts;
});

final reducedProductProvider = Provider((ref) {
  return (allProducts.where((p) => p.price < 5000).toList());
});
