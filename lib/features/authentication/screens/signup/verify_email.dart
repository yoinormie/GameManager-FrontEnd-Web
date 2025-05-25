import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:ecommerce/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(TImages.sendGmail),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBetweenSections),
              // Title & SubTitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBetweenItems),
              Text(
                'supportlouie@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBetweenItems),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBetweenSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.receivedGmail,
                    title: TTexts.yourAccountCreatedTitle,
                    subtitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(()=>const LoginScreen()),
                  )),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSize.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.tResendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
