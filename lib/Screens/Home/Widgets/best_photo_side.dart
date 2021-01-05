import 'package:flutter/material.dart';

class BestPhotoSide extends StatelessWidget {
  final Radius cornerRadius = Radius.circular(15);
  final bool isLeft;
  final Widget child;
  BestPhotoSide({this.isLeft, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: cornersRadius(),
        color: Colors.red,
      ),
      alignment: Alignment.center,
      height: 180,
      width: 18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          child,
        ],
      ),
    );
  }

  BorderRadius cornersRadius() {
    if (isLeft) {
      return BorderRadius.only(
          topRight: cornerRadius, bottomRight: cornerRadius);
    } else {
      return BorderRadius.only(topLeft: cornerRadius, bottomLeft: cornerRadius);
    }
  }
}
