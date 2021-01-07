import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Widgets/share_panel.dart';
import 'package:irana/styles.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Details extends StatefulWidget {
  const Details({
    Key key,
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final dividerColor = const Color.fromRGBO(202, 202, 209, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _userDetails(),
            height20,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _photoTitle(),
                    height20,
                    _photoDescription(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _photoDescription() {
    return Column(
      children: [
        height20,
        _options(context),
        height20,
        Text(
          lorem,
          textAlign: TextAlign.center,
          style: yekanRegular.copyWith(
              color: Color.fromRGBO(8, 51, 88, 1), fontSize: 17),
        )
      ],
    );
  }

  Widget _photoTitle() {
    return Text(
      "دریاچه هرمز - خلیج فارس",
      style: yekanHeavy.copyWith(
        color: Color.fromRGBO(22, 15, 48, 1),
      ),
    );
  }

  Widget _userDetails() {
    return Padding(
      padding: const EdgeInsets.only(right: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "جاذبه های طبیعی",
            style: yekanMedium.copyWith(
              fontSize: 10,
              color: Color.fromRGBO(36, 22, 99, 1),
            ),
          ),
          Text(
            "مسعود صادقی دینانی",
            style: yekanMedium.copyWith(
              fontSize: 10,
              color: Color.fromRGBO(36, 22, 99, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _options(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _option("128".toPersianDigit(), "${imagesFolder}fav_icon.png"),
            _verticalDivider(),
            _option("320".toPersianDigit(), "${imagesFolder}eye_icon.png"),
            _verticalDivider(),
            _option("اشتراک", "${imagesFolder}share_icon.png", onPressed: () {
              setState(() {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SharePanel(),
                );
              });
            }),
            _verticalDivider(),
            _option("دانلود", "${imagesFolder}donwload_icon.png"),
          ],
        ),
      ),
    );
  }

  Widget _option(text, image, {onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        child: Column(
          children: [
            Image.asset(
              image,
              height: 15,
              color: Color.fromRGBO(165, 165, 174, 1),
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: yekanMedium.copyWith(
                  fontSize: 15, color: Color.fromRGBO(165, 165, 174, 1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _verticalDivider() {
    return Container(
      height: 25,
      child: VerticalDivider(
        color: dividerColor,
        thickness: 1.5,
      ),
    );
  }
}
