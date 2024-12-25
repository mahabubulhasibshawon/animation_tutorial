import 'package:animation_tutorial/implicit_animations/animated_align_example.dart';
import 'package:animation_tutorial/implicit_animations/animated_color_pallete.dart';
import 'package:animation_tutorial/implicit_animations/animated_images.dart';
import 'package:animation_tutorial/implicit_animations/animated_shoping_cart.dart';
import 'package:animation_tutorial/implicit_animations/animated_switcher.dart';
import 'package:animation_tutorial/implicit_animations/combine_multiple_animated_widgets.dart';
import 'package:animation_tutorial/implicit_animations/like_button_animation.dart';
import 'package:animation_tutorial/implicit_animations/update_profile_picture.dart';
import 'package:flutter/material.dart';

import 'implicit_animations/animated_icon_switcher.dart';
import 'implicit_animations/animated_tween.dart';

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
      home: UpdateProfilePicture(),
    );
  }
}

