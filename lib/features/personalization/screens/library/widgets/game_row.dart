import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TGameRow extends StatelessWidget {
  const TGameRow({
    super.key,
    required this.imagePath,
    required this.name,
    required this.date,
  });
  final String imagePath;
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset( // cambiar a .network si utilizaria URL
          imagePath,
          width: 70,
          height: 70,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Iconsax.book);
          },
        ),
        const SizedBox(height: TSize.defaultSpace,),
        Text(name,style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSize.defaultSpace,),
        Text(date,style: Theme.of(context).textTheme.bodyMedium,)
      ],
    );
  }
}
