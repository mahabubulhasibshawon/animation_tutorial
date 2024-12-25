import 'package:flutter/material.dart';

class UpdateProfilePicture extends StatefulWidget {
  @override
  _UpdateProfilePictureState createState() => _UpdateProfilePictureState();
}

class _UpdateProfilePictureState extends State<UpdateProfilePicture> {
  bool _isFirstPicture = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() => _isFirstPicture = !_isFirstPicture);
          },
          child: AnimatedSwitcher(
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.bounceInOut,
            duration: Duration(milliseconds: 300),
            child: Image.network(
              _isFirstPicture
                  ? 'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                  : 'https://images.unsplash.com/photo-1734249201319-e7227b1b4f54?q=80&w=1527&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              key: ValueKey<bool>(_isFirstPicture),
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
