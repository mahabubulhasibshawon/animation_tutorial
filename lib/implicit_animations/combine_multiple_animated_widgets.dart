import 'package:flutter/material.dart';

class CombineMultipleAnimatedWidgets extends StatefulWidget {
  @override
  _CombineMultipleAnimatedWidgetsState createState() => _CombineMultipleAnimatedWidgetsState();
}

class _CombineMultipleAnimatedWidgetsState extends State<CombineMultipleAnimatedWidgets> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Combined Animation Example')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isActive = !_isActive;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: _isActive ? 200 : 100,
            height: _isActive ? 100 : 200,
            color: _isActive ? Colors.blue : Colors.green,
            child: Center(
              child: AnimatedRotation(
                turns: _isActive ? 0.5 : 0.0,
                duration: const Duration(seconds: 1),
                child: Icon(
                  _isActive ? Icons.check_circle : Icons.circle,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
