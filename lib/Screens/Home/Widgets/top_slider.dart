import 'package:flutter/material.dart';
import 'package:irana/Controllers/slider_item_controller.dart';
import 'package:irana/Screens/Home/Widgets/top_slider_item.dart';

class TopSlider extends StatefulWidget {
  @override
  _TopSliderState createState() => _TopSliderState();
}

class _TopSliderState extends State<TopSlider> {
  List sliderItems = getItemsList();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return TopSliderItem(
            image: sliderItems[index].getImage(),
            name: sliderItems[index].getName(),
          );
        },
        itemCount: sliderItems.length,
      ),
    );
  }
}
