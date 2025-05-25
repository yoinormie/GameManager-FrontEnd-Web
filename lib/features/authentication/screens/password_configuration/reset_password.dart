import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:ecommerce/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(children: [
             // Image
              Image(
                image: AssetImage(TImages.receivedGmail),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBetweenSections),
              // Title & SubTitle
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBetweenItems),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBetweenSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:  () =>Get.off(()=> const LoginScreen()),
                  child: const Text(TTexts.done),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
