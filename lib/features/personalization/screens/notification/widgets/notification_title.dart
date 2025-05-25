import 'package:flutter/material.dart';

class TNotificationTitle extends StatelessWidget {
  final String title;

  const TNotificationTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}