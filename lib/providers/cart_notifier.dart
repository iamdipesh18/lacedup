import 'package:lacedup/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_notifier.g.dart';

/// Riverpod Notifier for managing cart state
@riverpod
class CartNotifier extends _$CartNotifier {
  /// Initial cart is empty
  @override
  Set<Product> build() => {};

  /// Adds a product to the cart
  void addProduct(Product product) {
    state = {...state, product}; // ensures uniqueness
  }

  /// Removes a product from the cart by ID
  void removeProduct(Product product) {
    state = state.where((p) => p.id != product.id).toSet();
  }
}

/// Computes the total price of items in the cart
@riverpod
int cartTotal(CartTotalRef ref) {
  final cart = ref.watch(cartNotifierProvider);
  return cart.fold(0, (sum, product) => sum + product.price);
}
