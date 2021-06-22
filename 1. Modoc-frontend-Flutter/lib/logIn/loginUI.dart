import 'package:flutter/material.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';

import 'package:modoc/customConfigurations/screenMaping.dart';

import 'package:modoc/logIn/logInPage.dart';

class loginUI extends StatefulWidget {
  @override
  _loginUIState createState() => _loginUIState();
}

class _loginUIState extends State<loginUI> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mbg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: customHeight(250)),
              Container(
                  width: customWidth(96),
                  alignment: Alignment.center,
                  child: Image.asset("assets/MainLogo.png",

                      ),
                 ),
              SizedBox(height: customHeight(25),),
              Text(
                "MoDoc",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: customHeight(40),
                  fontWeight: FontWeight.w800,
                  color: lightestCyan,
                  fontFamily: "Avenir",
                ),
              ),
              SizedBox(height: customHeight(10),),
              Text(
                "Doctor In your Pocket",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: customHeight(15),
                  fontWeight: FontWeight.w800,
                  color: lightCyan,
                  fontFamily: "Avenir",
                ),
              ),
              SizedBox(height: customHeight(180),),
              SizedBox(height: customHeight(10),),
              SizedBox(height: customHeight(20),),
            ],
          ),

          ),
      ),
    );
  }
}
