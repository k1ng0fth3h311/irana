import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irana/Constants.dart';

class CircularAvatar extends StatefulWidget {
  final double height;
  final double width;

  CircularAvatar({this.height = 100, this.width = 100});

  @override
  _CircularAvatarState createState() => _CircularAvatarState();
}

class _CircularAvatarState extends State<CircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: widget.height,
          width: widget.width,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.2),
              ),
              child: Icon(
                Icons.person,
                size: widget.height / 2.5,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            height: 55,
            width: 55,
            child: SvgPicture.asset(
              "${imagesFolder}add_image.svg",
              fit: BoxFit.contain,
            ),
          ),
          bottom: -13,
          right: -13,
        ),
      ],
    );
  }
}
