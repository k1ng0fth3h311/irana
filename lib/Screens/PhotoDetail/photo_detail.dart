import 'package:flutter/material.dart';
import 'Widgets/body.dart';

class PhotoDetails extends StatelessWidget {
  final tag;
  final image;
  final userImage;
  PhotoDetails({@required this.tag, @required this.image, this.userImage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        tag: tag,
        image: image,
        userImage: userImage,
      ),
    );
  }
}
