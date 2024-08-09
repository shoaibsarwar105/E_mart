import 'package:beautybonenza/utils/theme/custom_themes/Button_sheet_theme.dart';
import 'package:beautybonenza/utils/theme/custom_themes/appbar_theme.dart';
import 'package:beautybonenza/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:beautybonenza/utils/theme/custom_themes/chip_theme.dart';
import 'package:beautybonenza/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:beautybonenza/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:beautybonenza/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/text_theme.dart';


class AppTheme{
  AppTheme._();
  static ThemeData lightTheme=ThemeData(
      useMaterial3: true,
      fontFamily: 'poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: BTextTheme.lightTextTheme,
    elevatedButtonTheme: BElevatedButton.lightElevatedButtonTheme,
    chipTheme: BChipTheme.lightChipTheme,
      appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme

  );
  static ThemeData darkTheme=ThemeData(
      useMaterial3: true,
      fontFamily: 'poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: BTextTheme.darkTextTheme,
      elevatedButtonTheme: BElevatedButton.darkElevatedButtonTheme,
      chipTheme: BChipTheme.darkChipTheme,
      appBarTheme: BAppBarTheme.darkAppBarTheme,
      checkboxTheme: BCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: BTextFormFieldTheme.darkInputDecorationTheme
  );

}