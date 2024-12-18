import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedColorPallete extends StatefulWidget {
  const AnimatedColorPallete({super.key});

  @override
  State<AnimatedColorPallete> createState() => _AnimatedColorPalleteState();
}

class _AnimatedColorPalleteState extends State<AnimatedColorPallete> {
  
  List<Color> currentPallete = generateRandomPallete();
  
  static List<Color> generateRandomPallete() {
    final random = Random();
    return List.generate(5, (_) => Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    ));
  }
  void regeneratePallete() {
    setState(() {
      currentPallete = generateRandomPallete();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            for(Color color in currentPallete) 
              AnimatedContainer(
                curve: Curves.easeInToLinear,
                width: 100,
                  height: 100,
                color: color,
                margin: EdgeInsets.all(8), duration: Duration(milliseconds: 500),
              ),
            ElevatedButton(onPressed: regeneratePallete, child: Icon(Icons.roundabout_left))
          ],
        ),
      ),
    );
  }
}
