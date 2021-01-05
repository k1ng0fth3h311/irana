import 'package:flutter/material.dart';
import 'package:irana/Widgets/background.dart';
import 'package:irana/Screens/SingUp/Widgets/body.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Body(),
    );
  }
}
