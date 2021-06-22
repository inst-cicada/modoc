import 'package:flutter/material.dart';

import 'package:modoc/Pages/homeScreen.dart';
import 'package:modoc/Pages/homeScreenUp.dart';

class homeStack extends StatefulWidget {
  @override
  _homeStackState createState() => _homeStackState();
}

class _homeStackState extends State<homeStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        homeScreen(),
        homeUp(),
      ]
    );
  }
}
