import 'package:flutter/material.dart';
import 'package:irana/Screens/Login/login.dart';
import 'dart:async';

import 'Widgets/body.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
