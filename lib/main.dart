import 'package:animation_tutorial/implicit_animations/animated_color_pallete.dart';
import 'package:animation_tutorial/implicit_animations/animated_images.dart';
import 'package:animation_tutorial/implicit_animations/animated_shoping_cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: AnimatedImagePalette(),
    );
  }
}

