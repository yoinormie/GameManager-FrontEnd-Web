import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Security',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBetweenSections,),
                  Text('Escanea un QR con la cámara para iniciar sesión con: ',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
                  const SizedBox(height: TSize.spaceBetweenSections,),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
