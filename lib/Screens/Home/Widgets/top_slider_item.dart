import 'dart:ui';

import 'package:flutter/material.dart';

class TopSliderItem extends StatelessWidget {
  final image;
  final String name;

  TopSliderItem({@required this.image, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 60,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              )),
          // BlurEffect(
          //   height: 60,
          //   width: 60,
          // ),
          SizedBox(
            height: 7,
          ),
          Text(
            name,
            style: TextStyle(
                color: Color.fromRGBO(8, 51, 88, 1),
                // fontWeight: FontWeight.bold,
                fontFamily: "YekanBakh",
                fontWeight: FontWeight.w900,
                fontSize: 10),
          ),
        ],
      ),
    );
    // return BlurEffect(
    //   height: 80,
    //   width: 80,
    // );
  }
}
