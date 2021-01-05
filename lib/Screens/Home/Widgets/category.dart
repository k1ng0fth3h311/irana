import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final name;
  final image;
  Category({this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "YekanBakh",
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
        ),
        width: 100,
      ),
    );
  }
}
