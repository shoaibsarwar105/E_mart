import 'package:flutter/material.dart';

class BElevatedButton {
  BElevatedButton._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle:const  TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 16),
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))




      ));
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle:const  TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 16),
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))




      ));

}