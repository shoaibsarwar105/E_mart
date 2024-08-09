import 'package:flutter/material.dart';

class BOutlinedButtonTheme{
  BOutlinedButtonTheme._();
  static final lightOutlinedButtonTheme=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(elevation: 0,
    foregroundColor: Colors.black,
      side:const BorderSide(color: Colors.blue),
      textStyle:const TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16),
      padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))

    )


  );
  static final darkOutlinedButtonTheme=OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side:const BorderSide(color: Colors.blueAccent),
          textStyle:const TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 16),
          padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))

      )


  );






}