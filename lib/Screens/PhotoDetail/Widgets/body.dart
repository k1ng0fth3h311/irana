import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';

class Body extends StatelessWidget {
  final tag;
  Body({@required this.tag});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              "${imagesFolder}photo_detail.png",
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Image.asset("${imagesFolder}photo_details_user.png"),
            right: 16,
            bottom: MediaQuery.of(context).size.height / 2.5,
          ),
        ],
      ),
    );
  }
}
