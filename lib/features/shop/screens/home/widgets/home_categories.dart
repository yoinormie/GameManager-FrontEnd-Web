import 'package:ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  final List<CategoryItem> categories;

  const THomeCategories({
    super.key,
    this.categories = const [
      CategoryItem(image: TImages.steam, title: 'Steam'),
      CategoryItem(image: TImages.play, title: 'Play'),
      CategoryItem(image: TImages.epic, title: 'Epic'),
      CategoryItem(image: TImages.xbox, title: 'Xbox'),
      CategoryItem(image: TImages.gog, title: 'GOG'),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final category = categories[index];
          return TVerticalImageText(
            image: category.image,
            title: category.title,
            onTap: category.onTap ?? () {},
          );
        },
      ),
    );
  }
}

class CategoryItem {
  final String image;
  final String title;
  final VoidCallback? onTap;

  const CategoryItem({required this.image, required this.title, this.onTap});
}
