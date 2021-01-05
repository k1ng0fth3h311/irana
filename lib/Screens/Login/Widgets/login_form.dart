import 'package:flutter/material.dart';
import 'package:irana/Screens/Home/home.dart';
import 'package:irana/Widgets/red_button.dart';
import 'package:irana/Widgets/signup_text.dart';
import 'package:irana/Widgets/text_input.dart';

import '../../../styles.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInput(
            placeholder: "شماره همراه",
            type: TextInputType.phone,
          ),
          height20,
          RedButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            ),
            text: "ورود",
          ),
          height35,
          SignUpText(
            isSignupPage: false,
          ),
        ],
      ),
    );
  }
}
