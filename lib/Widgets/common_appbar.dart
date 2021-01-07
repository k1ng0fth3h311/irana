import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Widgets/back_icon.dart';
import 'package:irana/styles.dart';

class CommonAppBar extends StatelessWidget {
  final text;
  CommonAppBar({this.text});
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
            BackIcon(),
            SizedBox(
              width: 115,
            ),
            _title(text),
          ],
        ),
      ),
    );
  }

  Widget _title(text) {
    return Text(
      text,
      style: yekanBold.copyWith(fontSize: 22),
    );
  }
}
