import 'package:ecommerce/features/personalization/screens/notification/widgets/notification_content.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class TNotificationCard extends StatelessWidget {
  final String imagePath;
  final String notificationTitle;
  final String appName;

  const TNotificationCard({
    super.key,
    required this.imagePath,
    required this.notificationTitle,
    required this.appName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(TSize.cardRadiusMd),
      height: TSize.notificacionHeight,
      decoration: BoxDecoration(
        color: TColors.primary,
        borderRadius: BorderRadius.circular(TSize.md),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 40, 28, 28),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(4, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(TSize.sm),
          child: TNotificationContent(
            imagePath: imagePath,
            notificationTitle: notificationTitle,
            appName: appName,
        ),
      ),
    );
  }
}