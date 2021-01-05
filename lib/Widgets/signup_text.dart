import 'dart:ui';
import 'package:irana/Screens/SingUp/signup.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  final bool isSignupPage;

  SignUpText({this.isSignupPage = true});

  @override
  Widget build(BuildContext context) {
    return defineText(context);
  }

  Widget defineText(context) {
    TextStyle style = TextStyle(
      color: Colors.white,
      fontFamily: "YekanBakh",
      fontSize: 18,
    );
    if (!isSignupPage) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "هنوز ثبت نام نکرده اید؟",
            style: style,
          ),
          GestureDetector(
            child: Text(
              "ثبت نام کنید",
              style: style.copyWith(fontWeight: FontWeight.bold, shadows: [
                Shadow(
                  offset: Offset(0.0, 0.0),
                  blurRadius: 3.0,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ]),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignUp(),
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "قبلا ثبت نام کرده اید؟",
            style: style,
          ),
          GestureDetector(
            child: Text(
              "وارد شوید",
              style: style.copyWith(fontWeight: FontWeight.bold, shadows: [
                Shadow(
                  offset: Offset(0.0, 0.0),
                  blurRadius: 3.0,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ]),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      );
    }
  }
}
