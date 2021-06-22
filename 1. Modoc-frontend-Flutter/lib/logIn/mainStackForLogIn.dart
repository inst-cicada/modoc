import 'package:flutter/material.dart';
import 'package:modoc/logIn/loginUI.dart';
import 'package:modoc/logIn/logInPage.dart';

class logStack extends StatefulWidget {
  @override
  _logStackState createState() => _logStackState();
}

class _logStackState extends State<logStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          loginUI(),
          logIN(),
        ],
      ),
    );
  }
}
