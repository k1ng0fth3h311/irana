import 'package:flutter/material.dart';
import 'Widgets/body.dart';

class PhotoDetails extends StatelessWidget {
  final tag;
  PhotoDetails({@required this.tag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(tag: tag),
    );
  }
}
