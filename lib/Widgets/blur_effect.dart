import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/styles.dart';

class BlurEffect extends StatelessWidget {
  final double height;
  final double width;
  BlurEffect({this.height = 80, this.width = 80});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            height: height - 5,
            width: width - 5,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1.0,
                sigmaY: 1.0,
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(.2),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("${imagesFolder}isfahan.png"),
                  fit: BoxFit.contain),
            ),
            height: height - 5,
            width: width - 5,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("${imagesFolder}isfahan.png"),
                  fit: BoxFit.contain),
            ),
            height: height,
            width: width,
          ),
        ],
      ),
    );
  }
}
