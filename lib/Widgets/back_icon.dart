import 'package:flutter/material.dart';

import '../Constants.dart';

class BackIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: Image.asset(
        "${imagesFolder}back_icon.png",
      ),
    );
  }
}
