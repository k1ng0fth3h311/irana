import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/styles.dart';

class SortBar extends StatefulWidget {
  @override
  _SortBarState createState() => _SortBarState();
}

class _SortBarState extends State<SortBar> {
  List sorts = [
    SortItem(
      text: "پربازدید ترین",
      image: "${imagesFolder}favorites.png",
      active: true,
      index: 0,
    ),
    SortItem(
      text: "محبوب ترین",
      image: "${imagesFolder}fav_icon.png",
      index: 1,
    ),
    SortItem(
      text: "جدید ترین",
      image: "${imagesFolder}confetti.png",
      index: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var verticalDivider = VerticalDivider(
      color: Color.fromRGBO(233, 233, 235, 1),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  sorts = [
                    SortItem(
                      text: "پربازدید ترین",
                      image: "${imagesFolder}favorites.png",
                      active: true,
                      index: 0,
                    ),
                    SortItem(
                      text: "محبوب ترین",
                      image: "${imagesFolder}fav_icon.png",
                      index: 1,
                    ),
                    SortItem(
                      text: "جدید ترین",
                      image: "${imagesFolder}confetti.png",
                      index: 2,
                    ),
                  ];
                });
              },
              child: sorts[0],
            ),
            verticalDivider,
            InkWell(
              onTap: () {
                setState(() {
                  sorts = [
                    SortItem(
                      text: "پربازدید ترین",
                      image: "${imagesFolder}favorites.png",
                      index: 0,
                    ),
                    SortItem(
                      text: "محبوب ترین",
                      image: "${imagesFolder}fav_icon.png",
                      active: true,
                      index: 1,
                    ),
                    SortItem(
                      text: "جدید ترین",
                      image: "${imagesFolder}confetti.png",
                      index: 2,
                    ),
                  ];
                });
              },
              child: sorts[1],
            ),
            verticalDivider,
            InkWell(
              onTap: () {
                setState(() {
                  sorts = [
                    SortItem(
                      text: "پربازدید ترین",
                      image: "${imagesFolder}favorites.png",
                      index: 0,
                    ),
                    SortItem(
                      text: "محبوب ترین",
                      image: "${imagesFolder}fav_icon.png",
                      index: 1,
                    ),
                    SortItem(
                      text: "جدید ترین",
                      image: "${imagesFolder}confetti.png",
                      index: 2,
                      active: true,
                    ),
                  ];
                });
              },
              child: sorts[2],
            ),
          ],
        ),
      ),
    );
  }
}

class SortItem extends StatefulWidget {
  final active;
  final image;
  final text;
  final index;
  SortItem({this.active, this.image, this.text, this.index});
  @override
  _SortItemState createState() => _SortItemState();
}

class _SortItemState extends State<SortItem> {
  @override
  Widget build(BuildContext context) {
    final color =
        widget.active == true ? Colors.red : Color.fromRGBO(165, 165, 174, 1);
    return Row(
      children: [
        Text(
          widget.text,
          style: yekanBold.copyWith(
            color: color,
            fontSize: 13,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          widget.image,
          fit: BoxFit.fill,
          height: 15,
          color: color,
        ),
      ],
    );
  }
}
