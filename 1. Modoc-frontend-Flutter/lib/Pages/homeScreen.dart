import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:modoc/Pages/symptomPage.dart';

import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/logIn/API/url.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:modoc/Pages/profile.dart';
import 'package:modoc/logIn/API/userVar.dart';
import 'package:modoc/logIn/API/doctorAPI.dart';
import 'package:modoc/Pages/doctorShow.dart';

import 'package:modoc/customConfigurations/functionsAndClass.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    List<UnicornButton> bottomButtons=[];
    bottomButtons.add(
        UnicornButton(
          currentButton: FloatingActionButton(
            backgroundColor: darkestCyan,
            elevation: 4,
            splashColor: lightCyan,
            mini: true,
            child: Icon(
                Icons.add,
                  color: lightestCyan,
                ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => symptomSelection()),
              );

              print("Floating button pressed");},


          ),
        )
    );
    bottomButtons.add(
        UnicornButton(
          currentButton: FloatingActionButton(
            backgroundColor: darkestCyan,
            elevation: 4,
            splashColor: lightCyan,
            mini:true,
            child:
                Icon(
                  Icons.person_search,
                  color: lightestCyan,
                ),
            onPressed: ()async{
              var code;
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text(
                        "Enter ICD Code here",
                        style: TextStyle(
                          color: darkCyan,
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                      content:TextField(
                      onChanged:(value){setState(() {
                        code=value;
                              }
                            );
                          }
                        ),

                      actions: [
                        InkWell(
                          child: Container(
                            height: customHeight(30),
                              width: customWidth(150),
                              padding: EdgeInsets.fromLTRB(customWidth(17), customWidth(5), customWidth(15), customWidth(5)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(customHeight(20)),
                                color: darkCyan,
                              ),
                              child: Text(
                                  "Search for Doctors",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                          ),
                          onTap: ()async{
                            var x=await doctorAPI(URL,code);
                            var information=jsonDecode(x);
                            var doclist=[];
                            for(int i=0;i<information['len'];i++){
                              doclist.add(information[i.toString()]);
                            }
                            print(doclist.length);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => searchDoctors()),
                            );
                          },
                        )
                      ],
                    );
                  },
                );
              print("Floating button pressed");
           },


          ),
        )
    );
    customSize().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height:customHeight(812),
        width:customWidth(375),
        color: Colors.white,
        child: Column(
          children:[
            SizedBox(height: customHeight(430),),
            SingleChildScrollView(
              child: Container(
                width: customWidth(310),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: customHeight(50),),
                      Row(
                        children: [
                          Icon(Icons.history,size: 16,color: darkCyan,),
                          SizedBox(width:customWidth(10)),
                          Text(
                            "History",
                            style: TextStyle(
                                color: darkCyan,
                                fontWeight: FontWeight.w600,
                                fontSize: 16

                            ),
                          ),
                        ],
                      ),
                      CurrentDiseases==null||CurrentDiseases=='null'?
                      Column(
                        children: [
                          SizedBox(height: customHeight(20),),
                          Center(
                            child:Column(
                              children: [
                                Icon(
                                  Icons.search_off,
                                  color: midCyan.withOpacity(.3),
                                  size: customHeight(50),
                                ),
                                SizedBox(height:customHeight(15)),
                                Text(
                                  "No Disease has been predicted yet!",
                                  style: TextStyle(
                                    color: midCyan.withOpacity(.6),
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      )
                      :
                      ExpansionTile(
                        initiallyExpanded: true,
                        childrenPadding: EdgeInsets.fromLTRB(customWidth(23), 0, 0, 0),
                        title: Text(
                          "Diagnosed Disease:",
                          style: TextStyle(
                              color: midCyan.withOpacity(.7),
                              fontWeight: FontWeight.w600,
                              fontSize: 16

                          ),
                        ),
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Disease Name: ",
                                  style: TextStyle(
                                    color: midCyan,
                                    fontSize: 15
                                  ),
                                ),
                                SizedBox(width: customWidth(5),),
                                Text(
                                  CurrentDiseases.split(',')[0],
                                  style: TextStyle(
                                    color: darkCyan,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: customHeight(10),),
                            Row(
                              children: [
                                Text(
                                  "Disease ICD Code: ",
                                  style: TextStyle(
                                      color: midCyan,
                                      fontSize: 15
                                  ),
                                ),
                                SizedBox(width: customWidth(5),),
                                Text(
                                  CurrentDiseases.split(',')[1],
                                  style: TextStyle(
                                    color: darkCyan,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: customHeight(10),),
                            Text(
                              "Precautions to take: ",
                              style: TextStyle(
                                  color: midCyan,
                                  fontSize: 15
                              ),
                            ),
                            SizedBox(height: customHeight(10),),
                            Text(
                              "1. "+CurrentDiseases.split(',')[2],
                              style: TextStyle(
                                color: darkCyan,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: customHeight(10),),
                            Text(
                              "2. "+CurrentDiseases.split(',')[3],
                              style: TextStyle(
                                color: darkCyan,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: customHeight(20),),
                          ]
                        ),
                        ]
                      ),
                    ],
                  ),
                ),
              ),                                                          //From this to be dont this is for the manual
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,
        child: Row(
          children: [
            Spacer(),
            IconButton(
                icon: Icon(Icons.account_circle_outlined),
                color: midCyan,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => userProfile()));
                }
            ),
            Spacer(),Spacer(),Spacer(),Spacer(),
            IconButton(
                icon: Icon(Icons.help_outline_sharp),
                color: midCyan,
                onPressed: null
            ),
            Spacer(),
          ],
        ),
      ),
      floatingActionButton: UnicornDialer(
        childButtons: bottomButtons,
        parentButton: Icon(Icons.search_rounded),
        parentButtonBackground: darkestCyan,
        backgroundColor: Colors.white.withOpacity(0),
        orientation: UnicornOrientation.VERTICAL,
        hasNotch: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
