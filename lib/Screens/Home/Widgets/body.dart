import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Screens/Home/Widgets/advertise.dart';
import 'package:irana/Screens/Home/Widgets/best_photo_month.dart';
import 'package:irana/Screens/Home/Widgets/category_slider.dart';
import 'package:irana/Screens/Home/Widgets/posts.dart';
import 'package:irana/Screens/Home/Widgets/sort_bar.dart';
import 'package:irana/Screens/Home/Widgets/top_slider.dart';
import 'package:irana/styles.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "${imagesFolder}irana.png",
                  fit: BoxFit.contain,
                ),
                height: 23,
              ),
              height20,
              TopSlider(),
              height20,
              BestPhotoMonth(
                image: "${imagesFolder}ax_bartar.png",
              ),
              height20,
              CategorySlider(),
              height20,
              Advertise(
                image: "${imagesFolder}advertise.png",
              ),
              height20,
              SortBar(),
              Posts(),
            ],
          ),
        ),
      ),
    ]);
  }
}
