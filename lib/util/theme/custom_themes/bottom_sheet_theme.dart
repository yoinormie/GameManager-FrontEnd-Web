import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottonSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((16))),
  );
  static BottomSheetThemeData darkBottonSheetTheme = BottomSheetThemeData(
    showDragHandle: true, // Muestra el icono de arrastre
    backgroundColor: Colors.black, // Color de fondo del BottomSheet
    modalBackgroundColor: Colors.black, // Color de fondo del modal
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ), // Asegura que el BottomSheet ocupe todo el ancho
    shape: RoundedRectangleBorder(
      // Forma del BottomSheet
      borderRadius: BorderRadius.circular((16)), // Bordes redondeados
    ),
  );
}
