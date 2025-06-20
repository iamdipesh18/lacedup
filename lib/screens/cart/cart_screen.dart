import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lacedup/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(reducedProductsproviderProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
appBar: AppBar(
  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.of(context).pop();
    },
  ),
  title: const Text(
    'Your Cart',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      letterSpacing: 1,
    ),
  ),
  centerTitle: true,
  elevation: 0,
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cartProducts.map((product) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Image.asset(product.image, width: 60, height: 60),
                    const SizedBox(width: 10),
                    Expanded(child: Text(product.title)),
                    Text('Rs ${product.price}'),
                  ],
                ),
              );
            }),//.toList(),

            // Optional: Add total or other summary widgets here
            const Divider(),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Total: Rs ${cartProducts.fold(0, (sum, p) => sum + p.price)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
