import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irana/styles.dart';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
  final String placeholder;
  final TextInputType type;
  final int maxLength;
  TextInput(
      {this.placeholder = "هرچی",
      this.type = TextInputType.text,
      this.maxLength = 11});
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: formsInputHeight,
      width: double.infinity,
      child: CupertinoTextField(
        padding: const EdgeInsets.only(right: 13),
        placeholder: widget.placeholder,
        placeholderStyle: formsTextStyle,
        keyboardType: widget.type,
        maxLength: widget.maxLength,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(112, 112, 112, 1),
          ),
          borderRadius: formsInputBorderRadius,
          color: Color.fromRGBO(241, 241, 246, 0.3),
        ),
      ),
    );
  }
}
