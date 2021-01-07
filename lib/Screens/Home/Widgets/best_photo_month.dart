import 'package:flutter/material.dart';
import 'package:irana/Screens/Home/Widgets/best_photo_side.dart';
import 'package:irana/Screens/Home/Widgets/months_slider.dart';

class BestPhotoMonth extends StatefulWidget {
  final image;
  BestPhotoMonth({this.image});
  @override
  _BestPhotoMonthState createState() => _BestPhotoMonthState();
}

class _BestPhotoMonthState extends State<BestPhotoMonth> {
  double sideWidth = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BestPhotoSide(
            isLeft: true,
            child: MonthsSlider(),
          ),
          Container(
            alignment: Alignment.center,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            width: MediaQuery.of(context).size.width - 70,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 5,
              child: Image.asset(
                widget.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          BestPhotoSide(
            isLeft: false,
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                "عـــکـس بــــرتـــــــر مـــــاه",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "YekanBakh",
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
