import 'package:flutter/material.dart';

class AnimatedShopingCart extends StatefulWidget {
  const AnimatedShopingCart({super.key});

  @override
  State<AnimatedShopingCart> createState() => _AnimatedShopingCartState();
}

class _AnimatedShopingCartState extends State<AnimatedShopingCart> {
  // bool Expanded isExpanded
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: Container(
          width: 80.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
