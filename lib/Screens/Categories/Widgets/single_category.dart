import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/styles.dart';

class SingleCategory extends StatelessWidget {
  final image;
  final text;
  SingleCategory({this.image, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          elevation: 7,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "${imagesFolder}back_icon.png",
                      fit: BoxFit.fill,
                      height: 20,
                    ),
                    Text(
                      text,
                      style: yekanHeavy,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        height20,
      ],
    );
  }
}
