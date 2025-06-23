import 'package:flutter/foundation.dart';
import 'package:lacedup/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_notifier.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    state = state.where((p) => p.id != product.id).toSet();
  }
}

@riverpod
int cartTotal(CartTotalRef ref) {
  final cartProducts = ref.watch(cartNotifierProvider);
  return cartProducts.fold(0, (sum, p) => sum + p.price);
}
