import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/logIn/API/userVar.dart';
class homeUp extends StatefulWidget {
  @override
  _homeUpState createState() => _homeUpState();
}

class _homeUpState extends State<homeUp> {
  bool drawOpen=false;
  double drawY=-customHeight(400);
  Radius topmenu=Radius.circular(120);


  String _dateString="",_timeString="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDate = DateFormat('dd-MM-yyyy')
        .format(DateTime.now())
        .toString();
    final String formattedTime = DateFormat('kk:mm:ss')
        .format(DateTime.now())
        .toString();
    setState(() {
      _dateString = formattedDate.toString();
      _timeString = formattedTime.toString();
    });
  }



    @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return AnimatedContainer(
      height: customHeight(812),
      width: customWidth(375),
      transform: Matrix4.translationValues(0, drawY, 0),
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: darkestCyan.withOpacity(0.5),
            spreadRadius: customHeight(10),
            blurRadius: customHeight(20),
            offset: Offset(0, customHeight(5)), // changes position of shadow
          ),
        ],
        color: midCyan,
        borderRadius: BorderRadius.only(
            topLeft:Radius.circular(0),
            topRight:Radius.circular(0),
            bottomLeft:topmenu,
            bottomRight:topmenu
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: customHeight(30),),
          Center(
            child: Container(
              height:customHeight(220),
              width: customWidth(360),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'MoDoc',
                      style: TextStyle(
                        fontSize: customHeight(40),
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.none,
                        fontFamily: 'Avenir',
                        color: Colors.white.withOpacity(.8),
                      ),
                    ),
                    Text(
                      "\nMoDoc - Mobile Doctor is a virtual doctor for individuals to keep "
                          "track of their health issues (NOTE: The predictions of this application "
                          "is not professional. Please make sure to consult a doctor after the prediction "
                          "have been made). People who are far away from hospitals "
                          "and want to make sure that whether they have any disease or not before "
                          "going to doctor are welcomed here. MoDoc Helps you to diagnose what "
                          "disease you might have and removes the stress of misconception about "
                          "disease. Having Modoc in your hand can help you to take neccessary measures "
                          "to prevent the worst than being too late. This app is free to use and totaly "
                          "safe to use. There are no security risks of using this app. So feel free to use this app.\n"
                          "\nTHANK YOU FOR USING MODOC.",
                      style: TextStyle(
                        fontSize: customHeight(15),
                        color: lightestCyan,
                        fontFamily: 'Avenir',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: customHeight(10),),
          Center(
            child: Container(
              height: customHeight(140),
              width: customWidth(360),
              child: Row(
                children: [
                  Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: darkCyan)
                            )
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith((states){
                          if (states.contains(MaterialState.pressed))
                            return darkCyan.withOpacity(0.5);
                          return lightestCyan.withOpacity(0.25);
                        },
                        ) ,
                        foregroundColor: MaterialStateProperty.all(lightestCyan)
                    ),
                    onPressed: (){null;},
                    child: Row(
                      children: [
                        Icon(Icons.support_agent),
                        SizedBox(width: customWidth(10),),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),

                  ),
                  Spacer(),
                  ElevatedButton(

                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: darkCyan)
                            )
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith((states){
                          if (states.contains(MaterialState.pressed))
                            return darkCyan.withOpacity(0.5);
                          return lightestCyan.withOpacity(0.25);
                        },
                        ) ,
                        foregroundColor: MaterialStateProperty.all(lightestCyan)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.code),
                        SizedBox(width: customWidth(5),),
                        Text(
                          "Source Code",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),

                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Container(
            height:customHeight(337),
            width: customWidth(375),
            child: Row(
              children: [
                Container(
                  width: customWidth(375),
                  height: customHeight(362),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(0),
                        topRight:Radius.circular(0),
                        bottomLeft:Radius.circular(100),
                        bottomRight:Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: customHeight(35),),
                      Row(
                        children: [
                          SizedBox(width: customWidth(20),),
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: customHeight(55),
                              color: Colors.white.withOpacity(.9),
                              fontFamily: 'Avenir',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: customHeight(10),),
                      Container(
                        padding: EdgeInsets.fromLTRB(customWidth(15), customHeight(5), customWidth(18), customHeight(5)),
                        height: customHeight(45),
                        width: customWidth(375),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: darkestCyan.withOpacity(0.5),
                                spreadRadius: customHeight(2),
                                blurRadius: customHeight(5),
                                offset: Offset(customHeight(5), customHeight(5)), // changes position of shadow
                              ),
                            ],
                          color: darkestCyan.withOpacity(.9),
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(0),left: Radius.circular(0)),
                          border: Border.all(
                            color: darkestCyan,
                            width: customHeight(2)
                          )
                        ),
                        child: Text(
                          UserName,
                          style: TextStyle(
                            fontSize: customHeight(27),
                            color: Colors.white,
                            fontFamily: 'Avenir',
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: customHeight(20),),
                      Row(
                        children: [
                          SizedBox(width: customWidth(20),),
                          Text(
                            "Today is",
                            style: TextStyle(
                              fontSize: customHeight(20),
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Avenir',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: customHeight(10),),
                      Row(
                        children: [
                          SizedBox(width: customWidth(20),),
                          Text(
                            _dateString,
                            style: TextStyle(
                              fontSize: customHeight(30),
                              color: Colors.white.withOpacity(.8),
                              fontFamily: 'Avenir',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(height: customHeight(5),),
                              Container(
                                height: customHeight(35),
                                width: customWidth(100),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  
                                  border: Border.all(
                                    color: Colors.white.withOpacity(.8),
                                    width: 2,
                                  )
                                ),
                                child: Center(
                                  child: Text(
                                    _timeString,
                                    style: TextStyle(
                                      fontSize: customHeight(20),
                                      color: Colors.white.withOpacity(.8),
                                      fontFamily: 'Avenir',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: customWidth(20),),
                        ],
                      ),
                      SizedBox(height: customHeight(23),),
                      Row(
                        children: [
                          SizedBox(width: customWidth(20),),
                          SizedBox(
                            width: customWidth(120),
                            child: ElevatedButton(
                              style: ButtonStyle(
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
                                Navigator.pop(context);
                                UserName=null;
                                Password=null;
                                Email=null;
                                print("Log Out Clicked!");
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.logout),
                                  SizedBox(width: customWidth(5),),
                                  Text(
                                    "Log Out",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                    ),
                                  )
                                ],
                              ),

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: customHeight(25)),
          GestureDetector(
            child:
                drawOpen?Icon(
                Icons.arrow_drop_up,
                color: lightestCyan,
                size: customHeight(50),
              ):Icon(
                Icons.arrow_drop_down,
                color: lightestCyan,
                size: customHeight(50),
              ),
              onTap: (){
            if(drawOpen==true){
                drawOpen=false;
                setState(() {
                  drawY=-customHeight(400);
                  topmenu=Radius.circular(120);
                });

              }
            else{
              drawOpen=true;
              setState(() {
                drawY=0;
                topmenu=Radius.circular(0);
              });
            }
            },

          )
        ],
      ),
    );
  }
}
