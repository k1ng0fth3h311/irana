import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irana/styles.dart';

import '../Constants.dart';

class RedButton extends StatelessWidget {
  final onPressed;
  final String text;

  RedButton({this.text = "ورود", this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Color.fromRGBO(138, 2, 2, 0.5),
              offset: Offset(2, 2),
              spreadRadius: .5),
        ],
      ),
      height: formsInputHeight,
      width: double.infinity,
      child: RaisedButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: formsInputBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: formsTextStyle,
            ),
            SvgPicture.asset(
              "${imagesFolder}check_icon.svg",
              width: 27,
              fit: BoxFit.fill,
            )
          ],
        ),
        color: Color.fromRGBO(241, 61, 61, 1),
        onPressed: onPressed,
      ),
    );
  }
}
