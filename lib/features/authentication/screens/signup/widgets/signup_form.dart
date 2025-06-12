import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce/util/auth/authservice.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatefulWidget {
  const TSignupForm({super.key});

  @override
  State<TSignupForm> createState() => _TSignupFormState();
}

class _TSignupFormState extends State<TSignupForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
            controller: emailController,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: TSize.spaceBetweenInputFields),
          // Password
          TextFormField(
            controller: passwordController,
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
              onPressed: () {
                final email = emailController.text.trim();
                final password = passwordController.text.trim();
                if (email.isEmpty || password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Email y contraseña son obligatorios'),
                    ),
                  );
                  return;
                }
                if (AuthService.register(email, password)) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Usuario registrado')));
                  Get.to(() => VerifyEmailScreen());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Ya existe un usuario registrado')),
                  );
                }
              },
              child: Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
