import 'package:flutter/material.dart';

class PulsatingCircleAnimation extends StatelessWidget {
  const PulsatingCircleAnimation({super.key});

  final double size = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsating Circle Animation'),
      ),
      body: Center(
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 200),
              duration: Duration(milliseconds: 5000),
              builder: (context, size, widget) {
                print(size);
                return Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        blurRadius: size,
                        spreadRadius: size / 2,
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
