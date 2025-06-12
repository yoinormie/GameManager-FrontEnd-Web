import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.name,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Steam ID
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.steam_id,
              prefixIcon: Icon(Iconsax.game),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // PSN User
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.PSN_user,
              prefixIcon: Icon(Iconsax.gameboy),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Terms & Conditions CheckBox
          TTermsAndConditionCheckbox(),
          SizedBox(height: TSize.spaceBetweenSections),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
