
import 'package:beautybonenza/features/authentications/screens/onboarding/onboarding.dart';
import 'package:beautybonenza/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


/// Entry point in flutter application
void main(){

  //Todo:Add widgets Bindings
  // Todo:Init Local Storage
  // Todo:Await Native Splash
  // Todo: initialize Firebase
  // Todo: initialize Authentication




  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,

    home: OnBoardingScreen(),);
  }
}
