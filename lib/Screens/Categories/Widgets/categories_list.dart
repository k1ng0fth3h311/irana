import 'package:flutter/material.dart';
import 'package:irana/Controllers/category_controller.dart';
import 'package:irana/Screens/Categories/Widgets/single_category.dart';

class CategoriesList extends StatelessWidget {
  final List _categories = getItemsList();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _categories.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleCategory(
          image: _categories[index].wideImage,
          text: _categories[index].name,
        );
      },
    );
  }
}
