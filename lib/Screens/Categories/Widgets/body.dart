import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irana/Screens/Categories/Widgets/categories_list.dart';
import 'package:irana/Widgets/common_appbar.dart';
import 'package:irana/styles.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CommonAppBar(
            text: "دسته ها",
          ),
          Expanded(
            child: Padding(
              padding: usuallMargin,
              child: Column(
                children: [
                  height20,
                  _searchField(),
                  Expanded(child: CategoriesList()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchField() {
    return CupertinoTextField(
      decoration: BoxDecoration(
        color: Color.fromRGBO(241, 241, 246, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      placeholder: "جستجو",
      textAlign: TextAlign.right,
      prefix: Icon(
        Icons.search,
        color: Color.fromRGBO(165, 165, 174, 1),
      ),
      style: yekanMedium.copyWith(
        fontSize: 17,
        color: Color.fromRGBO(165, 165, 174, 1),
      ),
      placeholderStyle: yekanMedium.copyWith(
        fontSize: 17,
        color: Color.fromRGBO(165, 165, 174, 1),
      ),
    );
  }
}
