import 'package:flutter/material.dart';

class AnimatedIconSwitcher extends StatefulWidget {
  const AnimatedIconSwitcher({super.key});

  @override
  State<AnimatedIconSwitcher> createState() => _AnimatedIconSwitcherState();
}

class _AnimatedIconSwitcherState extends State<AnimatedIconSwitcher> {
  bool _isFirstIcon = true;

  void toggleIcon() {
    setState(() {
      _isFirstIcon = !_isFirstIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Icon Switcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: toggleIcon,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Icon(
                  _isFirstIcon ? Icons.access_time_filled_sharp : Icons.ac_unit_outlined,
                  key: ValueKey<bool>(_isFirstIcon), // Ensure unique keys for each icon
                  size: 100,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleIcon,
              child: const Text('Toggle Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
