
import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSize.spaceBetweenSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSize.spaceBetweenInputFields),
            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSize.spaceBetweenInputFields / 2),
            // Remember Me & Forget Password
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(TTexts.rememberMe),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () =>Get.to(()=>const ForgetPassword()),
                  child: Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSize.spaceBetweenSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(()=> const NavigationMenu()),
                child: Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSize.spaceBetweenItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () =>Get.to(() => const SignupScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
