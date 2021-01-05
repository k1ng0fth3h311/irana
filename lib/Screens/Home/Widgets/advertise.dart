import 'package:flutter/material.dart';

class Advertise extends StatefulWidget {
  final image;
  Advertise({this.image});
  @override
  _AdvertiseState createState() => _AdvertiseState();
}

class _AdvertiseState extends State<Advertise> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:
            DecorationImage(image: AssetImage(widget.image), fit: BoxFit.fill),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 80,
    );
  }
}
