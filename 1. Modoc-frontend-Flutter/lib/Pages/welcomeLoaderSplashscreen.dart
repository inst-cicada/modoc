import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:modoc/logIn/mainStackForLogIn.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/customConfigurations/screenMaping.dart';

class welcomeSplash extends StatefulWidget {
  @override
  _welcomeSplashState createState() => _welcomeSplashState();
}

class _welcomeSplashState extends State<welcomeSplash> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(
          children:[
            SplashScreen(
              seconds: 3,
              navigateAfterSeconds: logStack(),
              loaderColor: lightestCyan,

              loadingText: Text(
                "Getting things ready for you...",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "Avenir",
                  color: lightCyan,
                ),
              ),
            ),
            Column(
              children: [
                Spacer(),
                Container(
                  width: double.infinity,
                  child: Image.asset("assets/MainLogo.png",
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.2,
                  ),
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child:Column(
                        children:[
                          Text("Welcome to",
                            style:TextStyle(
                              color: lightCyan,
                              fontFamily: "Avenir",
                              fontSize: customHeight(25),
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text("CANDET",
                            style:TextStyle(
                              color: lightestCyan,
                              fontFamily: "Avenir",
                              fontSize: customHeight(40),
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.none,
                            ),
                          )
                        ]
                    )
                ),
                //Spacer(),
                Spacer(),
              ],
            ),


          ]

      ),
    );
  }
}
