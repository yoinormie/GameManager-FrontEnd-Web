import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSize.defaultSpace,
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: const Text("Skip")),
    );
  }
}