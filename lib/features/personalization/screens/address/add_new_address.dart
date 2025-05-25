import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: TSize.spaceBetweenInputFields),
                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number',
                  ),
                ),
                const SizedBox(height: TSize.spaceBetweenInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'))),
                    const SizedBox(width: TSize.spaceBetweenInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code'))),
                  ],
                ),
                const SizedBox(height: TSize.spaceBetweenInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City'))),
                    const SizedBox(width: TSize.spaceBetweenInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State'))),
                  ],
                ),
                const SizedBox(height: TSize.spaceBetweenInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country')),
                const SizedBox(height: TSize.defaultSpace),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('Save')),)
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
