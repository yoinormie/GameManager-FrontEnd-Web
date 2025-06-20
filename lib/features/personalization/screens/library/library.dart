import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/features/personalization/screens/library/widgets/drop_down_filter.dart';
import 'package:ecommerce/features/personalization/screens/library/widgets/games_row_images.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  String? selectedValue = 'Reciente'; // Valor inicial

  void _handleDropdownChange(String? value) {
    if (value == null) return;
    setState(() {
      selectedValue = value;
    });
    switch (value) {
      case 'Reciente':
        ('Ordenar por reciente');
        break;
      case 'Nombre':
        ('Ordenar por nombre');
        break;
      case 'Fecha salida':
        ('Ordenar por fecha de salida');
        break;
      default:
        ('Opción no reconocida');
    }
  }

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
                      'Library',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBetweenSections),
                  TSearchContainer(text: 'Busca tus juegos'),
                  const SizedBox(height: TSize.spaceBetweenSections),
                  TDropdownFilter(
                    selectedValue: selectedValue!,
                    onChanged: _handleDropdownChange,
                  ),
                ],
              ),
            ),
            // Body
            const Column(
              children: [
                TGameRowImages(
                  imagePaths: [TImages.game11, TImages.game22, TImages.game33],
                ),
                SizedBox(height: TSize.spaceBetweenSections),
                TGameRowImages(
                  imagePaths: [TImages.game44, TImages.game55, TImages.game66],
                ),
                SizedBox(height: TSize.spaceBetweenSections),
                TGameRowImages(
                  imagePaths: [
                    TImages.game77,
                    TImages.game88,
                    TImages.game1010,
                  ],
                ),
                SizedBox(height: TSize.spaceBetweenSections),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
