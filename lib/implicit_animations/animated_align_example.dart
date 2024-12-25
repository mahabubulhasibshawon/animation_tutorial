import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  @override
  _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _isCentered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign Example')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isCentered = !_isCentered;
          });
        },
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: _isCentered ? Alignment.center : Alignment.topRight,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
