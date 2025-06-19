import 'package:lacedup/models/product.dart';
import 'package:riverpod/riverpod.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Balenciaga Speed',
    price: 3800,
    image: 'assets/product/Balenciaga_Speed.jpeg',
  ),
  Product(
    id: '2',
    title: 'Alpinestars Tech 10',
    price: 150000,
    image: 'assets/product/Alpinestars_Tech_10.jpg',
  ),
    Product(
    id: '3',
    title: 'Balenciaga Speed',
    price: 3800,
    image: 'assets/product/Balenciaga_Speed.jpeg',
  ),
  Product(
    id: '4',
    title: 'Alpinestars Tech 10',
    price: 150000,
    image: 'assets/product/Alpinestars_Tech_10.jpg',
  ),
    Product(
    id: '5',
    title: 'Balenciaga Speed',
    price: 3800,
    image: 'assets/product/Balenciaga_Speed.jpeg',
  ),
  Product(
    id: '6',
    title: 'Alpinestars Tech 10',
    price: 150000,
    image: 'assets/product/Alpinestars_Tech_10.jpg',
  ),
  // Product(id: '3', title: 'title', price: price, image: image),
  // Product(id: '4', title: 'title', price: price, image: image),
  // Product(id: '5', title: 'title', price: price, image: image),
  // Product(id: '6', title: 'title', price: price, image: image),
  // Product(id: '7', title: 'title', price: price, image: image),
  // Product(id: '8', title: 'title', price: price, image: image),
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider((ref) {
  return (allProducts.where((p) => p.price < 5000).toList());
});

//generated codes
