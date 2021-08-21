import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xrayanalysis/BottomNavBar/BottomNavBar.dart';
import 'package:xrayanalysis/Screens/SplashScreen.dart';
//import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
