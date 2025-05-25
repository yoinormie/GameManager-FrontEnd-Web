import 'package:ecommerce/util/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce/util/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottonSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutLineButtonTheme.lightOutLineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottonSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheem,
    outlinedButtonTheme: TOutLineButtonTheme.darkOutLineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
