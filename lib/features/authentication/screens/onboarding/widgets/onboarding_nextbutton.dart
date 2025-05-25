import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/device/device_utility.dart';
import 'package:ecommerce/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:dark ? TColors.primary: Colors.black),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}