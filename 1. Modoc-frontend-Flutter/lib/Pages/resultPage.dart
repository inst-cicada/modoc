import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:modoc/Pages/homeStack.dart';


import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/logIn/API/doctorAPI.dart';
import 'package:modoc/Pages/doctorShow.dart';
import 'package:modoc/logIn/API/url.dart';

String Disease="Some Disease";
String Description="Hellow this is just a test page";
String ICD="xxxx";
String Precaution1="Precaution 1";
String Precaution2="Precaution 2";
String Precaution3="Precaution 3";
String Precaution4="Precaution 4";

class resultPage extends StatefulWidget {
  const resultPage({Key key}) : super(key: key);

  @override
  _resultPageState createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body:Padding(
          padding: EdgeInsets.fromLTRB(customWidth(30), customHeight(80), customWidth(30), customHeight(80)),
          child: SingleChildScrollView(
            child: Container(
              width: customWidth(315),
              child: Column(
                children: [
                  Text(
                      "You might have :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: midCyan,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                  ),
                  SizedBox(height: customHeight(18),),
                  Text(
                    Disease,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: darkCyan,
                      fontWeight: FontWeight.w800,
                      fontSize: 27,
                    ),
                  ),
                  SizedBox(height: customHeight(24),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                          color: midCyan.withOpacity(.15),
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
                          border: Border.all(
                            color: midCyan.withOpacity(.4),
                            width: 2,
                          ),

                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            ICD,textAlign: TextAlign.center,
                            style:TextStyle(
                              color: midCyan,
                              fontSize: 15,
                            ),
                          ),
                        ),

                      ),
                    InkWell(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: midCyan.withOpacity(.9),
                            borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
                            border: Border.all(
                              color: midCyan.withOpacity(.4),
                              width: 2,
                            ),
                          ),
                          child: Icon(Icons.copy,color: Colors.white,size: 15,),

                        ),
                      onTap: ()async{
                          await FlutterClipboard.copy(ICD);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Row(
                                    children: [
                                      Icon(
                                          Icons.check,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "ICD code copied to clipboard.",
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  )
                              )
                          );
                      },
                      ),
                    ],
                  ),
                  SizedBox(height: customHeight(24),),
                  Text(
                    Description,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: midCyan,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: customHeight(20),),
                  ExpansionTile(
                    title: Text(
                        "Precautions",
                        style: TextStyle(
                          color: darkCyan,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    expandedAlignment: Alignment.centerLeft,
                    childrenPadding: EdgeInsets.fromLTRB(customWidth(20), customHeight(10), customWidth(20), customHeight(10)),
                    children: [
                      SizedBox(width: customWidth(275),
                        child: Text(
                          "1. "+Precaution1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: darkCyan.withOpacity(.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: customHeight(15),),
                      SizedBox(width: customWidth(275),
                        child: Text(
                          "2. "+Precaution2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: darkCyan.withOpacity(.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: customHeight(15),),
                      SizedBox(width: customWidth(275),
                        child: Text(
                          "3. "+Precaution3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: darkCyan.withOpacity(.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: customHeight(15),),
                      SizedBox(width: customWidth(275),
                        child: Text(
                          "4. "+Precaution4,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: darkCyan.withOpacity(.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: customHeight(15),),
                    ],
                  ),
                  SizedBox(height: customHeight(50),),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: darkestCyan,width: customHeight(2))
                                )
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if (states.contains(MaterialState.pressed))
                                return darkestCyan.withOpacity(.95);
                              return darkCyan;
                            },
                            ) ,
                            foregroundColor: MaterialStateProperty.all(Colors.white)
                        ),
                        onPressed: (){
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                              homeStack()), (Route<dynamic> route) => false);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios,size: 13,),
                            SizedBox(width: 5,),
                            Text(
                              "Back to Home",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 13
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
                                    side: BorderSide(color: darkestCyan,width: customHeight(2))
                                )
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if (states.contains(MaterialState.pressed))
                                return darkestCyan.withOpacity(.95);
                              return darkCyan;
                            },
                            ) ,
                            foregroundColor: MaterialStateProperty.all(Colors.white)
                        ),
                        onPressed: ()async{
                          var x=await doctorAPI(URL,ICD);
                          var information=jsonDecode(x);
                          var doclist=[];
                          for(int i=0;i<information['len'];i++){
                            doclist.add(information[i.toString()]);
                          }
                          print(doclist.length);
                          doctorList=doclist;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => searchDoctors()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.person_search,size: 13,),
                            SizedBox(width: 5,),
                            Text(
                              "Search Doctors",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13
                              ),
                            )
                          ],
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
