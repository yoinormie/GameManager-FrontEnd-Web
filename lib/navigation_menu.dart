import 'package:ecommerce/features/personalization/screens/library/library.dart';
import 'package:ecommerce/features/personalization/screens/notification/notification.dart';
import 'package:ecommerce/features/personalization/screens/security/security.dart';
import 'package:ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black: Colors.white,
          indicatorColor: darkMode ? Color.fromARGB(25, 255, 255, 255): Color.fromARGB(25, 0, 0, 0) ,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.document),
              label: 'Library',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.security),
              label: 'Security',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.notification),
              label: 'Notification',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(), 
    const LibraryScreen(), 
    const SecurityScreen(), 
    const NotificationScreen(), 
    const SettingsScreen() , 
  ];
}