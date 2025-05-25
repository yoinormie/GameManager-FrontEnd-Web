import 'package:ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key, this.title='VPS'});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.google,
            title: title,
            onTap: () {},
          );
        },
      ),
    );
  }
}

// Para el futuro
class CategoryItem{
  final String image;
  final String title;
  final VoidCallback onTap;

  const CategoryItem({
    required this.image,
    required this.title,
    required this.onTap,
  });
}
