
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        SizedBox(width: TSize.spaceBetweenItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}