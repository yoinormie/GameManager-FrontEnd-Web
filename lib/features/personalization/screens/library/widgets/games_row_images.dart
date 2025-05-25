import 'package:flutter/material.dart';

class TGameRowImages extends StatelessWidget {
  const TGameRowImages({
    super.key,
    required this.imagePaths,
    this.width = 100,
    this.height = 150,
  });
  final List<String> imagePaths;
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          imagePaths.map((imagePath) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                imagePath,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
    );
  }
}
