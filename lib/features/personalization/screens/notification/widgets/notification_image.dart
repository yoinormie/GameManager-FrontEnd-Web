import 'package:ecommerce/features/personalization/screens/library/widgets/games_row_images.dart';
import 'package:flutter/material.dart';

class TNotificationImage extends StatelessWidget {
  final String imagePath;

  const TNotificationImage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TGameRowImages(
          imagePaths: [imagePath],
          height: 80,
        ),
      ],
    );
  }
}