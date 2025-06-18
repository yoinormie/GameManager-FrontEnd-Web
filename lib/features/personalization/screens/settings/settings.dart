import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/texts/seaction_heading.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                  // AppBar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),
                  // User Profile Card
                  TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: TSize.spaceBetweenSections),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const TSectionHeading(
                    title: 'Configuración de la cuenta',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBetweenItems),
                  const TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'Mi carrito',
                    subtitle: 'Agregar, eliminar productos y proceder al pago',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Cuenta bancaria',
                    subtitle: 'Retirar saldo a la cuenta bancaria registrada',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Mis cupones',
                    subtitle: 'Lista de todos los cupones con descuento',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notificaciones',
                    subtitle:
                        'Configura cualquier tipo de mensaje de notificación',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Privacidad de la cuenta',
                    subtitle: 'Gestionar uso de datos y cuentas conectadas',
                  ),

                  // App Settings
                  const SizedBox(height: TSize.spaceBetweenSections),
                  const TSectionHeading(
                    title: 'Configuración de la app',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBetweenItems),
                  const TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Cargar datos',
                    subtitle: 'Subir datos',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Modo seguro',
                    subtitle:
                        'Los resultados de búsqueda son seguros para todas las edades',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'Calidad de imagen HD',
                    subtitle: 'Establecer calidad de imagen a visualizar',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  // Logout Button
                  const SizedBox(height: TSize.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        _showLogoutDialog(context);
                      },
                      child: const Text('Cerrar sesión'),
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Cerrar sesión',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: const Text(
          '¿Estás seguro de que deseas cerrar sesión?',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          // Botón "CANCELAR"
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              foregroundColor: TColors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('CANCELAR'),
          ),
          // Botón "CERRAR SESION"
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Get.offAll(() => const LoginScreen());
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: TColors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('CERRAR SESION'),
          ),
        ],
      );
    },
  );
}
