import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedImagePalette extends StatefulWidget {
  const AnimatedImagePalette({super.key});

  @override
  State<AnimatedImagePalette> createState() => _AnimatedImagePaletteState();
}

class _AnimatedImagePaletteState extends State<AnimatedImagePalette> {
  List<String> currentImages = generateRandomImages();

  static List<String> generateRandomImages() {
    final random = Random();
    final List<String> images = [
      'https://images.unsplash.com/photo-1576158113928-4c240eaaf360?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?text=1',
      'https://images.unsplash.com/photo-1576158114254-3ba81558b87d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?text=2',
      'https://images.unsplash.com/photo-1574169208507-84376144848b?q=80&w=1479&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?text=3',
      'https://images.unsplash.com/photo-1606916929342-fef8a9b43f25?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?text=4',
      'https://images.unsplash.com/photo-1734532873375-574fd74045c5?q=80&w=1336&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?text=5',
      'https://images.unsplash.com/photo-1734012755159-0606af9bc1c8?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?text=6',
    ];
    return List.generate(6, (_) => images[random.nextInt(images.length)]);
  }

  void regenerateImages() {
    setState(() {
      currentImages = generateRandomImages();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Image Palette')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (String imageUrl in currentImages)
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                margin: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: regenerateImages,
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
