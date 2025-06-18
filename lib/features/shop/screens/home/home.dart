import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/texts/seaction_heading.dart';
import 'package:ecommerce/features/personalization/screens/library/widgets/game_row.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: const Column(
                children: [
                  // AppBar
                  THomeAppBar(),
                  SizedBox(height: TSize.spaceBetweenSections),
                  // SearchBar
                  TSearchContainer(text: 'Buscar en la tienda'),
                  SizedBox(height: TSize.spaceBetweenSections),
                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Categorías populares',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSize.spaceBetweenItems),
                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Body
            const Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: TPromoSlider(
                banners: [TImages.game1, TImages.game2, TImages.game3],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  TGameRow(
                    imagePath: TImages.game1,
                    name: 'Hades 2',
                    date: '18/06/2025',
                  ),
                  SizedBox(height: TSize.spaceBetweenItems),
                  TGameRow(
                    imagePath: TImages.game2,
                    name: 'Counter Strike 2',
                    date: '17/06/2025',
                  ),
                  SizedBox(height: TSize.spaceBetweenItems),
                  TGameRow(
                    imagePath: TImages.game3,
                    name: 'Doom Eternal',
                    date: '13/06/2025',
                  ),
                  SizedBox(height: TSize.spaceBetweenItems),
                  TGameRow(
                    imagePath: TImages.game4,
                    name: 'Portal',
                    date: '21/05/2025',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
