import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/styles.dart';

class CommenAppBar extends StatelessWidget {
  final text;
  CommenAppBar({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("${imagesFolder}commen_appbar.png"),
            fit: BoxFit.contain),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 35),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("${imagesFolder}back_icon.png"),
            SizedBox(
              width: 115,
            ),
            Text(
              text,
              style: yekanBold.copyWith(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
