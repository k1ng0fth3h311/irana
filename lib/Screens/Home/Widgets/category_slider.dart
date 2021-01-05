import 'package:flutter/material.dart';
import 'package:irana/Controllers/category_controller.dart';
import 'package:irana/Screens/Home/Widgets/category.dart';

class CategorySlider extends StatefulWidget {
  @override
  _CategorySliderState createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  List sliderItems = getItemsList();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Category(
            image: sliderItems[index].getImage(),
            name: sliderItems[index].getName(),
          );
        },
        itemCount: sliderItems.length,
      ),
    );
  }
}
