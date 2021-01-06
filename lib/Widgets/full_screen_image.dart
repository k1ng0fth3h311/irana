import 'package:flutter/material.dart';

class FullScrenImage extends StatelessWidget {
  final image;
  final tag;
  FullScrenImage({this.image, this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: tag,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
