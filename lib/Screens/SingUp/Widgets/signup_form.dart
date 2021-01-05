import 'package:flutter/material.dart';
import 'package:irana/Screens/Home/home.dart';
import 'package:irana/Screens/SingUp/Widgets/circular_avatar.dart';
import 'package:irana/Widgets/red_button.dart';
import 'package:irana/Widgets/signup_text.dart';
import 'package:irana/Widgets/text_input.dart';
import 'package:irana/styles.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularAvatar(
            height: 90,
            width: 90,
          ),
          height20,
          TextInput(
            maxLength: 30,
            placeholder: "نام و نام خانوادگی",
          ),
          height20,
          TextInput(maxLength: 11, placeholder: "شماره همراه"),
          height20,
          RedButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            ),
            text: "ثبت نام",
          ),
          height35,
          SignUpText(
            isSignupPage: true,
          ),
        ],
      ),
    );
  }
}
