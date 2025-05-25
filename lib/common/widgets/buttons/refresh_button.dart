import 'package:ecommerce/util/constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NotificationButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: TColors.buttonDarkBlue,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: TColors.buttonDarkBlue,
            width: 2,
          )
        ),
      ),
      child: const Text(
        'Actualizar',
        style: TextStyle(color: TColors.white),
      ),
    );
  }
}