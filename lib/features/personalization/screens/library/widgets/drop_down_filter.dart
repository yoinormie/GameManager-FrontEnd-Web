import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TDropdownFilter extends StatelessWidget {
  const TDropdownFilter({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });
  final String selectedValue;
  final ValueChanged<String?> onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: TSize.defaultSpace),
      child: Row(
        children: [
          DropdownButton<String>(
            value: selectedValue, // Valor actual seleccionado
            dropdownColor: TColors.primary,
            style: const TextStyle(fontSize: TSize.md, color: TColors.white),
            icon: const Icon(Iconsax.arrow_down_1),
            iconSize: 20,
            iconEnabledColor: TColors.white,
            items: const [
              DropdownMenuItem(value: 'Reciente', child: Text('Reciente')),
              DropdownMenuItem(value: 'Nombre', child: Text('Nombre')),
              DropdownMenuItem(
                value: 'Fecha salida',
                child: Text('Fecha salida'),
              ),
            ],
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
