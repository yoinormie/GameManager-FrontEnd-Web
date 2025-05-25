import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  void nextPage() {
    if(currentPageIndex.value == 2) {
      Get.offAll(()=>LoginScreen());
    } else {
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
    }
  }
  void skipPage() {
    Get.offAll(()=>const LoginScreen());
  }
}
