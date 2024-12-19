import 'package:flutter/material.dart';

class AnimatedShopingCart extends StatefulWidget {
  const AnimatedShopingCart({super.key});

  @override
  State<AnimatedShopingCart> createState() => _AnimatedShopingCartState();
}

class _AnimatedShopingCartState extends State<AnimatedShopingCart> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: isExpanded? 200 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: isExpanded ? Colors.green :  Colors.blue,
              borderRadius: BorderRadius.circular(isExpanded? 30 : 10.0),
            ),
            duration: Duration(milliseconds: 500),
            child: isExpanded ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                Text('Added to card', style: TextStyle(color: Colors.white),)
              ],
            ) :  Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
