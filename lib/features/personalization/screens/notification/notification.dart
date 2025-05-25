import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/features/personalization/screens/notification/widgets/notification_card.dart';
import 'package:ecommerce/features/personalization/screens/notification/widgets/notification_header.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool hasNotifications = false; // Simulacion si hay notificaciones

  void _refreshNotifications() {
    setState(() {
      hasNotifications = !hasNotifications; // Cambiamos el estado como ejemplo
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Notification',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBetweenSections),
                  NotificationHeader(
                    hasNotifications: hasNotifications,
                    onRefresh: _refreshNotifications,
                  ),
                ],
              ),
            ),
            // Body
            if (hasNotifications)
              TNotificationCard(
                imagePath: TImages.producBanner2,
                notificationTitle: 'Nombre app', // juego,
                appName: 'notificacion', // Rebajas, Amigos, 
              ),
          ],
        ),
      ),
    );
  }
}