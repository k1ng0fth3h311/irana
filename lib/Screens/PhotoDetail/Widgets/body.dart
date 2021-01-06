import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Screens/PhotoDetail/Widgets/details.dart';
import 'package:irana/Widgets/full_screen_image.dart';

class Body extends StatelessWidget {
  final tag;
  final image;
  final userImage;
  Body({@required this.tag, @required this.image, this.userImage});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        // Positioned()
        Positioned(
          top: 0,
          child: Hero(
            tag: tag,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (cotext) => FullScrenImage(
                        image: "${imagesFolder}photo_detail", tag: tag),
                  ),
                );
              },
              child: Image.asset(
                "${imagesFolder}photo_detail",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.83,
          child: Details(),
        ),
        Positioned(
          child: Image.asset(
            "${imagesFolder}photo_details_user",
            fit: BoxFit.fill,
          ),
          right: 16,
          bottom: MediaQuery.of(context).size.height / 2.54,
        ),
      ],
    );
  }
}
