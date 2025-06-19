import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Products'),
        backgroundColor: Colors.blueAccent,
        //  actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
            ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(20),
              color: Color.fromRGBO(96, 125, 139, 0.05),
            );
          },
        ),
      ),
    );
  }
}
