import 'package:ecommerce/common/widgets/buttons/refresh_button.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class NotificationHeader extends StatelessWidget {
  final bool hasNotifications;
  final VoidCallback onRefresh;

  const NotificationHeader({
    super.key,
    required this.hasNotifications,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Texto para explicar si hay o no notificaciones
        Text(
          hasNotifications
              ? 'Tienes nuevas notificaciones'
              : 'No hay notificaciones',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: TSize.spaceBetweenSections),
        // Botón para actualizar
        NotificationButton(onPressed: onRefresh)
      ],
    );
  }
}