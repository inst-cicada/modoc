import 'package:flutter/material.dart';

import 'package:modoc/logIn/API/userVar.dart';
import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/Pages/emailChange.dart';
import 'package:modoc/Pages/passwordChange.dart';

class userProfile extends StatefulWidget {
  const userProfile({Key key}) : super(key: key);

  @override
  _userProfileState createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: darkCyan,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
            "Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body:Stack(
        children: [
          Container(
            height: customHeight(135),
            decoration: BoxDecoration(
              color: darkCyan,
            ),
          ),
          Container(
            width: customWidth(375),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(height: customHeight(60),),
                Container(
                  height: customHeight(150),
                  width: customHeight(150),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        spreadRadius: customHeight(2),
                        blurRadius: customHeight(5),
                        offset: Offset(0,0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Container(
                      height: customHeight(140),
                      width: customHeight(140),
                      decoration: BoxDecoration(
                        color: midCyan.withOpacity(.5),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Center(
                        child: Text(
                          UserName[0],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: customHeight(120),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: customHeight(30),),
                Text(
                  UserName,
                  style: TextStyle(
                    color: darkCyan,
                    fontSize: customHeight(19),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: customHeight(15),),
                Text(
                  Email,
                  style: TextStyle(
                    color: darkCyan.withOpacity(.6),
                    fontSize: customHeight(13),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: customHeight(40),),
                SizedBox(width: customWidth(180),
                  child: ElevatedButton(
                    style: ButtonStyle(
                       padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(customWidth(20),0, customWidth(28), 0)
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white.withOpacity(.2),width: customHeight(2.5)),

                            )
                        ),
                        backgroundColor: MaterialStateProperty.all(midCyan) ,
                        foregroundColor: MaterialStateProperty.all(Colors.white.withOpacity(.9))
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => emailChange()),
                      );
                      },
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.mail),
                          Spacer(),
                          Text(
                            "Change E-Mail",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),
                    ),

                  ),
                ),
                SizedBox(height: customHeight(25),),
                SizedBox(width: customWidth(180),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(customWidth(15),0, customWidth(15), 0)
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white.withOpacity(.2),width: customHeight(2.5)),

                            )
                        ),
                        backgroundColor: MaterialStateProperty.all(midCyan) ,
                        foregroundColor: MaterialStateProperty.all(Colors.white.withOpacity(.9))
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => passwordChange()),
                      );
                      },
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.vpn_key_outlined),
                          Spacer(),
                          Text(
                            "Change Password",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
