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
                      image: TImages.aitireicon16,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              // Details
              const SizedBox(height: TSize.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: TSize.spaceBetweenItems),
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSize.spaceBetweenItems),
              TProfileMenu(onPressed: () {}, title: 'Name', value: 'Aitire'),
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'aitire',
              ),

              const SizedBox(height: TSize.spaceBetweenItems),
              const Divider(),
              const SizedBox(height: TSize.spaceBetweenItems),

              // Heading Personal Info
              TProfileMenu(onPressed: () {}, title: 'User ID', value: '12819',icon: Iconsax.copy,),
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'anthony.prado',
              ), 
              TProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+31-643567421',
              ),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '10 Oct, 1999',
              ),
              const Divider(),
              const SizedBox(height: TSize.spaceBetweenItems,),
              Center(
                child: TextButton(onPressed: (){}, child: const Text('Close Account',style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
