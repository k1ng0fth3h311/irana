import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/styles.dart';

class SharePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(.5),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 1.85,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.4),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        color: Color.fromRGBO(165, 165, 174, 1),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "اشتراک گذاری با",
                        textAlign: TextAlign.end,
                        style: yekanBold.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  _option("${imagesFolder}whatsapp_icon.png", "واتس اپ"),
                  _option("${imagesFolder}telegram_icon.png", "تلگرام"),
                  _option("${imagesFolder}facbook_icon.png", "فیس بوک"),
                  _option("${imagesFolder}twitter_icon.png", "توییتر"),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  Widget _option(image, text) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  spreadRadius: 3),
            ]),
        width: double.infinity,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: 35,
                ),
                Text(
                  text,
                  textAlign: TextAlign.end,
                  style: yekanBold.copyWith(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
