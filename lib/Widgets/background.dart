import 'package:flutter/material.dart';

import '../Constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  Background({this.child});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "${imagesFolder}Background.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("${imagesFolder}Rectangle.png"),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: child,
          ),
        ),
      ),
    );
  }
}
