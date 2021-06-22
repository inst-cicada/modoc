import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';


import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/logIn/API/mailAndPasswordChangeAPI.dart';
import 'package:modoc/logIn/API/url.dart';
import 'package:modoc/logIn/API/userVar.dart';

class passwordChange extends StatefulWidget {
  const passwordChange({Key key}) : super(key: key);

  @override
  _passwordChangeState createState() => _passwordChangeState();
}

class _passwordChangeState extends State<passwordChange> {
  @override
  Widget build(BuildContext context) {
    bool passVer=false;
    var password=null;
    var newpassword=null;
    var icoon=Icon(
      Icons.lock_outlined,
      color: Colors.white,
      size: customHeight(23),
    );
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: darkCyan,
        ),
        elevation: 0,
        title: Text(
          "Password Change",
          style: TextStyle(
              color: darkCyan,
              fontWeight: FontWeight.w800
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: customWidth(375),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              SizedBox(height: customHeight(60)),
              Container(
                height: customHeight(130),
                width: customHeight(130),
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
                    height: customHeight(120),
                    width: customHeight(120),
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
                          fontSize: customHeight(80),
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
              Text(
                "Current Password:",
                style: TextStyle(
                  color: darkCyan,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: customHeight(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: customHeight(40),
                    width: customWidth(240),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(40)),
                        border: Border.all(
                          color: darkCyan,
                          width: 2.5,
                        )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "**********",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(.3)
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            customWidth(15),
                            0,
                            0,
                            customHeight(15)
                        ),

                      ),
                      style: TextStyle(
                        color: midCyan,
                        fontSize: customHeight(15),
                      ),
                      onChanged: (val){
                        password=val;
                      },
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: customHeight(40),
                      width: customWidth(70),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
                        color: darkCyan,
                      ),
                      child: icoon,
                    ),
                    onTap: (){
                      print(Password);
                      if(password==Password){
                          passVer=true;
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
                                      "Password verified.",
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                )
                            )
                        );
                      }
                      else{
                          passVer=false;
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: Colors.red,
                                content: Row(
                                  children: [
                                    Icon(
                                      Icons.warning_amber_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Verification Failed",
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                )
                            )
                        );
                      }
                    },
                  )
                ],
              ),
              SizedBox(height: customHeight(20),),
              Text(
                "New Password:",
                style: TextStyle(
                  color: darkCyan,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: customHeight(10),),
              Container(
                height: customHeight(40),
                width: customWidth(310),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: darkCyan,
                      width: 2.5,
                    )
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "**********",
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.3)
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(
                        customWidth(15),
                        0,
                        0,
                        customHeight(15)
                    ),

                  ),
                  style: TextStyle(
                    color: midCyan,
                    fontSize: customHeight(15),
                  ),
                  onChanged: (val){
                    newpassword=val;
                  },
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
                  onPressed: ()async{
                    if(passVer){
                      var x=await passwordChangeAPI(URL,UserName,newpassword);
                      var info=jsonDecode(x);
                      if(info['message']=='Changed!'){
                      print(info);
                      Password=newpassword;
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title:Column(
                              children: [
                                Icon(Icons.done,color: Colors.black.withOpacity(.5),size: 60,),
                                Text("Password Changed Successfully!",style:TextStyle(fontSize: customHeight(15)),),
                              ],
                            ),
                            actions: [
                              TextButton(
                                  onPressed: (){
                                    var count = 0;
                                    Navigator.popUntil(context, (route) {
                                      return count++ == 2;
                                    });
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: darkCyan
                                    ),
                                  )
                              )
                            ],
                          );
                        },
                      );
                      }else{
                        showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title:Column(
                                children: [
                                  Icon(Icons.warning,color: Colors.black.withOpacity(.5),size: 60,),
                                  Text("Unsuccessful",style:TextStyle(fontSize: customHeight(15)),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                    onPressed: (){
                                      var count = 0;
                                      Navigator.popUntil(context, (route) {
                                        return count++ == 2;
                                      });
                                    },
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: darkCyan
                                      ),
                                    )
                                )
                              ],
                            );
                          },
                        );
                      }
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              backgroundColor: Colors.red,
                              content: Row(
                                children: [
                                  Icon(
                                    Icons.warning_amber_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Can't update Password without password verification",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: customHeight(14),
                                    ),
                                  )
                                ],
                              )
                          )
                      );
                    }},
                  child: Center(
                    child: Text(
                      "Change Password",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
