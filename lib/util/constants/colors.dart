import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF4868FF);
  static const Color secundary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    colors: [
      Color(0xffff9a9e), 
      Color(0xfffad0c4), 
      Color(0xfffad0c4),
    ],
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecundary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color.fromRGBO(255, 255, 255, 0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFFF6F6F6);
  static const Color buttonSecondary = Color(0xFFF6F6F6);
  static const Color buttonDisabled = Color(0xFFF6F6F6);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF5FC00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Colors
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  // Colors with Opancity
  static const Color textWhiteWithOpacity = Color.fromRGBO(255, 255, 255, 0.1);
  static const Color textPrimaryWithOpacity = Color.fromRGBO(72,104, 255, 0.5);
  static const Color textDarkWithOpacity = Color.fromRGBO(39, 39, 39, 0.6);

  //Button Colors
  static const Color buttonLightBlue = Color(0xFFB3D1FF); // Azul pastel (más claro que primary)
  static const Color buttonDarkBlue = Color(0xFF2C4EB2); // Azul profundo (más oscuro que primary)

}
