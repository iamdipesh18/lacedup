import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lacedup/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
  //initial value
  @override
  Set<Product> build() {
    return const {
      Product(
        id: '1',
        title: 'Balenciaga Speed',
        price: 3800,
        image: 'assets/product/Balenciaga_Speed.jpeg',
      ),
    };
  }

  //methods to update state
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
