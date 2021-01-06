import 'package:flutter/material.dart';
import 'package:irana/Screens/AboutUs/about_us.dart';
import 'package:irana/Screens/Home/home.dart';
import 'package:irana/Screens/SplashScreen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Irana',
        // home: SplashScreen(),
        home: AboutUs(),
      ),
    );
  }
}
