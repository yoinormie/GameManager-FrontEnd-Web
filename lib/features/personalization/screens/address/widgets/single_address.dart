import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:ecommerce/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSize.md),
      backgroundColor:
          selectedAddress ? TColors.textPrimaryWithOpacity : Colors.transparent,
      borderColor:
          selectedAddress
              ? Colors.transparent
              : dark
              ? TColors.darkGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:
                  selectedAddress
                      ? dark
                          ? TColors.light
                          : TColors.textDarkWithOpacity
                      : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Joe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSize.sm / 2),
              const Text('(+34) 654 867 532',maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSize.sm / 2),
              const Text('Calle Gran Vía, 28, Madrid, 28013, España',softWrap: true,),
            ],
          ),
        ],
      ),
    );
  }
}



