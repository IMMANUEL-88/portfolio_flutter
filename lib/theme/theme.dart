import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/theme/custom_theme/elevated_button_theme.dart';
import 'custom_theme/text_theme.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
    // useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: EColors.primaryColor,
    textTheme: ETextTheme.lightTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    scaffoldBackgroundColor: Color(0xfff7f7f7),
  );
  static ThemeData darktheme = ThemeData(
    // useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: EColors.primaryColor,
    textTheme: ETextTheme.darkTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    scaffoldBackgroundColor: EColors.scaffoldBg,
  );
}
