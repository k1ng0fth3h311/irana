import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Image.asset(
        "${imagesFolder}intro.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
