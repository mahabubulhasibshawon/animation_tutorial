import 'package:flutter/material.dart';

class LikeButtonAnimation extends StatefulWidget {
  @override
  _LikeButtonAnimationState createState() => _LikeButtonAnimationState();
}

class _LikeButtonAnimationState extends State<LikeButtonAnimation> {
  bool _isLiked = false;
  int _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() => _isLiked = !_isLiked);
          },
          child: AnimatedSwitcher(
            switchInCurve: Curves.easeInToLinear,
            duration: Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Icon(
              _isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
              key: ValueKey<bool>(_isLiked),
              size: 100,
              color: _isLiked ? Colors.blue : Colors.grey,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
