import 'package:ecommerce/features/personalization/screens/notification/widgets/notification_app_name.dart';
import 'package:ecommerce/features/personalization/screens/notification/widgets/notification_image.dart';
import 'package:ecommerce/features/personalization/screens/notification/widgets/notification_title.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class TNotificationContent extends StatelessWidget {
  final String imagePath;
  final String notificationTitle;
  final String appName;

  const TNotificationContent({
    super.key,
    required this.imagePath,
    required this.notificationTitle,
    required this.appName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TNotificationImage(imagePath: imagePath),
        const SizedBox(width: TSize.spaceBetweenItems),
        TNotificationTitle(title: notificationTitle),
        const SizedBox(width: TSize.spaceBetweenItems),
        TNotificationAppName(appName: appName),
      ],
    );
  }
}

