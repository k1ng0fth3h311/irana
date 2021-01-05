import 'package:flutter/material.dart';

class Month extends StatelessWidget {
  final String text;
  final Color textColor;
  Month(this.text, this.textColor);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontFamily: "YekanBakh",
              fontSize: 10),
        ),
      ),
    );
  }
}
