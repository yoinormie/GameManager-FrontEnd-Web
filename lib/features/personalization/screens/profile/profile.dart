import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/seaction_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.gamemanagericon16,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Cambiar foto de perfil'),
                    ),
                  ],
                ),
              ),
              // Details
              const SizedBox(height: TSize.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: TSize.spaceBetweenItems),
              TSectionHeading(
                title: 'Información del perfil',
                showActionButton: false,
              ),
              const SizedBox(height: TSize.spaceBetweenItems),
              TProfileMenu(onPressed: () {}, title: 'Nombre', value: 'Tony'),
              TProfileMenu(
                onPressed: () {},
                title: 'Nombre de usuario',
                value: 'Tony',
              ),

              const SizedBox(height: TSize.spaceBetweenItems),
              const Divider(),
              const SizedBox(height: TSize.spaceBetweenItems),

              // Heading Personal Info
              TProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '12819',
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'tonyprado253',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Número de teléfono',
                value: '+31-643567421',
              ),
              //  TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                onPressed: () {},
                title: 'Fecha de nacimiento',
                value: '14 Feb, 2004',
              ),
              const Divider(),
              const SizedBox(height: TSize.spaceBetweenItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Cerrar Cuenta',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
