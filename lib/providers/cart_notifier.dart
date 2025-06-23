import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lacedup/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
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

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      // ✅ correct condition
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
