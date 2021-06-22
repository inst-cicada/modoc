
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';

import 'package:modoc/Pages/homeStack.dart';
import 'package:modoc/logIn/API/LogInAPI.dart';
import 'package:modoc/logIn/API/signUpAPI.dart';
import 'package:modoc/logIn/API/emailValidators.dart';
import 'package:modoc/logIn/API/url.dart';

//user variable
import 'package:modoc/logIn/API/userVar.dart';

class logIN extends StatefulWidget {
    @override
  _logINState createState() => _logINState();
}

class _logINState extends State<logIN> {
  //api conn
  String url=URL;
  //forlogin
  String email='';
  String pwd='';
  String userName='';
  double logy=customHeight(600);
  double logTexty=customHeight(-212);
  Color errorColor=Colors.white;
  var user;
  //forsignup
  double signy=customHeight(600);
  String signOTP=null;
  bool canSign=false;
  double signTexty=customHeight(-212);
  Color signColor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: customHeight(580),
                  ),

                  //Below Sized Box For Login button

                  SizedBox(
                    width: customWidth(120),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: darkestCyan)
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
                      onPressed: (){
                        setState(() {
                          logy=customHeight(0);
                          logTexty=customHeight(0);
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.login),
                          SizedBox(width: customWidth(10),),
                          Text(
                            "Log In",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: customHeight(40)),

                  //BElow Sized Box for Signup Button

                  SizedBox(
                    width: customWidth(120),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: darkestCyan)
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
                      onPressed: (){
                        setState(() {
                          signy=customHeight(0);
                          signTexty=customHeight(0);
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.account_circle),
                          SizedBox(width: customWidth(8),),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),

                    ),
                  )
                ],
              ),
            ),
            Column(
            children: [
              Center(
                child: Stack(
                  children: [

                    //For Login Top Bar

                    AnimatedContainer(
                    height: customHeight(212),
                    width: customWidth(360),
                    duration: Duration(milliseconds: 250),
                    transform: Matrix4.translationValues(0, logTexty, 0),
                    child: Column(
                      children: [
                        SizedBox(height: customHeight(80),),
                        Text(
                          "Welcome back to",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: customHeight(20),
                            fontWeight: FontWeight.w700,
                            color: lightCyan,
                            fontFamily: "Avenir",
                          ),
                        ),
                        SizedBox(height: customHeight(10),),
                        Text(
                          "MoDoc",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: customHeight(65),
                            fontWeight: FontWeight.w800,
                            color: lightestCyan,
                            fontFamily: "Avenir",
                          ),
                        ),
                      ],
                    ),
                  ),

                    //For Signup top bar

                    AnimatedContainer(
                      height: customHeight(212),
                      width: customWidth(360),
                      duration: Duration(milliseconds: 250),
                      transform: Matrix4.translationValues(0, signTexty, 0),
                      child: Column(
                        children: [
                          SizedBox(height: customHeight(80),),
                          Text(
                            "Register in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: customHeight(20),
                              fontWeight: FontWeight.w700,
                              color: lightCyan,
                              fontFamily: "Avenir",
                            ),
                          ),
                          SizedBox(height: customHeight(10),),
                          Text(
                            "MoDoc",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: customHeight(65),
                              fontWeight: FontWeight.w800,
                              color: lightestCyan,
                              fontFamily: "Avenir",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
              Row(
                children: [Spacer(),
                  Stack(
                    children: [

                      //For Login Form

                      AnimatedContainer(
                        height: customHeight(600),
                        width: customWidth(360),
                        duration: Duration(milliseconds: 250),
                        transform: Matrix4.translationValues(0, logy, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(35),
                                topRight:Radius.circular(35),
                                bottomLeft:Radius.circular(0),
                                bottomRight:Radius.circular(0)
                            ),
                        ),
                      child: Column(
                        children: [
                          SizedBox(height: customHeight(50),),
                          Text(
                            "Log In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: customHeight(50),
                              fontWeight: FontWeight.w800,
                              color: darkCyan,
                              fontFamily: "Avenir",
                            ),
                          ),
                          SizedBox(height: customHeight(50),),
                          Container(
                              width: customWidth(280),
                              height: customHeight(50),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: customWidth(3),
                                  color: Colors.black38,              //black38
                                ),
                                borderRadius: BorderRadius.circular(45),

                              ),
                              padding:EdgeInsets.all(customWidth(8)),
                              child:Row(
                                children: [
                                  Icon(Icons.mail_outline,color: Colors.black26,size: customWidth(20),),
                                  Expanded(

                                      child: TextField(
                                        obscureText: false,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: customHeight(14),
                                        ),
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10,
                                                0,
                                                0,
                                                customHeight(13)
                                            ),
                                            hintText: "E-Email Address",
                                            hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                        ),
                                        onChanged: (val){
                                          email=val;
                                        },

                                      )
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: customHeight(40)),
                          Container(
                              width: customWidth(280),
                              height: customHeight(50),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: customWidth(3),
                                  color: Colors.black38,              //black38
                                ),
                                borderRadius: BorderRadius.circular(45),

                              ),
                              padding:EdgeInsets.all(customWidth(8)),
                              child:Row(
                                children: [
                                  Icon(Icons.vpn_key_outlined,color: Colors.black26,size: customWidth(20),),
                                  Expanded(

                                      child: TextField(
                                        obscureText: true,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: customHeight(14),
                                        ),
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10,
                                                0,
                                                0,
                                                customHeight(13)
                                            ),
                                            hintText: "Password",
                                            hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                        ),
                                        onChanged: (val){
                                          pwd=val;
                                        },


                                      )
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: customHeight(40),),
                          //button
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              width: customWidth(280),
                              height: customHeight(50),
                              decoration: BoxDecoration(
                                color: lightCyan,
                                border: Border.all(
                                  width: customWidth(3),
                                  color: darkCyan,              //black38
                                ),
                                borderRadius: BorderRadius.circular(45),

                              ),
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  fontSize: customHeight(20),
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),

                            ),
                            onTap: ()async{
                              try{
                              var x=await logInAPI(url,email,pwd);
                              user=jsonDecode(x);
                              print(user);
                              print("Login Button Main Pressed");
                              if(user['message'].toString()=='Not Found!'){
                                setState(() {
                                  errorColor=Colors.red;
                                });
                              }
                              else if(user['message'].toString()=='Found!') {
                                UserName=user['userName'];
                                Email=user['email'];
                                Password=user['password'];
                                CurrentDiseases=user['currentDiseases'];
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => homeStack()),
                                );
                                print('User Name:'+UserName+'\nEmail:'+Email+'\nPassword:'+Password);
                              }
                            }
                              catch(e){
                                print(e);
                                showDialog(
                                  context: context,
                                  builder: (context){
                                    return AlertDialog(
                                      title:Column(
                                        children: [
                                          Icon(Icons.report_gmailerrorred_rounded,color: Colors.black.withOpacity(.3),size: 60,),
                                          SizedBox(height: customHeight(10),),
                                          Text("Connection Error!",style:TextStyle(fontSize: customHeight(15)),),
                                          SizedBox(height: customHeight(5),),
                                          Text("Please check that whether you are connected to network or not!",textAlign: TextAlign.center,style:TextStyle(fontSize: customHeight(10)),),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: (){
                                              var count = 0;
                                              Navigator.popUntil(context, (route) {
                                                return count++ == 1;
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
                          },
                          ),
                          SizedBox(height: customHeight(20)),
                          SizedBox(height: customHeight(20)),
                          Container(
                            height: customHeight(20),
                            child: Text(
                              "Wrong Credentials! Try agian or Sign Up for a new Account.",
                              style: TextStyle(
                                color: errorColor,
                                fontSize: customHeight(15),
                              ),
                            ),
                          ),
                          SizedBox(height: customHeight(50)),
                          SizedBox(height: customHeight(20)),
                          Center(
                            child: Container(
                              child: Row(
                                children: [Spacer(),
                                  InkWell(child: Icon(Icons.arrow_back_ios,size: customHeight(30),color: darkCyan,),
                                      onTap: (){
                                        setState(() {
                                          logy=600;
                                          logTexty=-212;
                                        });
                                      }),
                                  SizedBox(width:customWidth(5)),
                                  InkWell(
                                      child: Text("Go Back",style: TextStyle(fontSize: customHeight(20),color: darkCyan),),
                                      onTap: (){
                                        setState(() {
                                          logy=600;
                                          logTexty=-212;
                                        });
                                      }
                                  ),
                                Spacer()],
                              ),

                            ),
                          ),
                        ],
                      ),
                      ),

                      //For Signup Form

                      AnimatedContainer(
                        height: customHeight(600),
                        width: customWidth(360),
                        duration: Duration(milliseconds: 250),
                        transform: Matrix4.translationValues(0, signy, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft:Radius.circular(35),
                              topRight:Radius.circular(35),
                              bottomLeft:Radius.circular(0),
                              bottomRight:Radius.circular(0)
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: customHeight(50),),
                            Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: customHeight(50),
                                fontWeight: FontWeight.w800,
                                color: darkCyan,
                                fontFamily: "Avenir",
                              ),
                            ),

                            SizedBox(height: customHeight(50),),
                            Container(
                                width: customWidth(280),
                                height: customHeight(50),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: customWidth(3),
                                    color: Colors.black38,              //black38
                                  ),
                                  borderRadius: BorderRadius.circular(45),

                                ),
                                padding:EdgeInsets.all(customWidth(8)),
                                child:Row(
                                  children: [
                                    Icon(Icons.account_circle_outlined,color: Colors.black26,size: customWidth(20),),
                                    Expanded(

                                        child: TextField(
                                          obscureText: false,
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: customHeight(14),
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.fromLTRB(
                                                  10,
                                                  0,
                                                  0,
                                                  customHeight(13)
                                              ),
                                              hintText: "User Name",
                                              hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                          ),
                                          onChanged: (val){
                                            userName=val;
                                          },

                                        )
                                    )
                                  ],
                                )
                            ),
                            SizedBox(height: customHeight(30)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Spacer(),
                                Container(
                                    width: customWidth(200),
                                    height: customHeight(50),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: customWidth(3),
                                        color: Colors.black38,              //black38
                                      ),
                                      borderRadius: BorderRadius.horizontal(left: Radius.circular(45),),

                                    ),
                                    padding:EdgeInsets.all(customWidth(8)),
                                    child:Row(
                                      children: [
                                        Icon(Icons.mail_outline,color: Colors.black26,size: customWidth(20),),
                                        Expanded(

                                            child: TextField(
                                              obscureText: false,
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: customHeight(14),
                                              ),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding: EdgeInsets.fromLTRB(
                                                      10,
                                                      0,
                                                      0,
                                                      customHeight(13)
                                                  ),
                                                  hintText: "E-Email Address",
                                                  hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                              ),
                                              onChanged: (val){
                                                email=val;
                                              },

                                            )
                                        ),

                                      ],
                                    )
                                ),
                                InkWell(
                                  onTap: ()async{
                                    if(mailValidation(email)){
                                      if(await sendOtp(email)){
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
                                                      "OTP sent to Email.",
                                                      style: TextStyle(
                                                        fontStyle: FontStyle.italic,
                                                      ),
                                                    )
                                                  ],
                                                )
                                            )
                                        );
                                      }
                                    }
                                    else{
                                      email=null;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(backgroundColor: Colors.red,
                                              content: Row(
                                                children: [
                                                  Icon(
                                                    Icons.warning_amber_outlined,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    "Invalid email",
                                                    style: TextStyle(
                                                      fontStyle: FontStyle.italic,
                                                    ),
                                                  )
                                                ],
                                              )
                                          )
                                      );
                                    }
                                    print("Otp sent");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, customHeight(6), 0),
                                    width: customWidth(80),
                                    height: customHeight(50),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(
                                      color: darkCyan.withOpacity(.2),
                                      offset: Offset(3,3),
                                      spreadRadius: 5,
                                      blurRadius: 3
                                      )],
                                      color: darkCyan,
                                      border: Border.all(
                                        width: customWidth(3),
                                        color: darkCyan,              //black38
                                      ),
                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(45),),

                                    ),
                                    child: Text(
                                      "Send OTP",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: customHeight(15)
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            SizedBox(height: customHeight(30)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Spacer(),
                                Container(
                                    width: customWidth(200),
                                    height: customHeight(50),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: customWidth(3),
                                        color: Colors.black38,              //black38
                                      ),
                                      borderRadius: BorderRadius.horizontal(left: Radius.circular(45),),

                                    ),
                                    padding:EdgeInsets.all(customWidth(8)),
                                    child:Row(
                                      children: [
                                        Icon(Icons.keyboard_rounded,color: Colors.black26,size: customWidth(20),),
                                        Expanded(

                                            child: TextField(
                                              obscureText: true,
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: customHeight(14),
                                              ),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding: EdgeInsets.fromLTRB(
                                                      10,
                                                      0,
                                                      0,
                                                      customHeight(13)
                                                  ),
                                                  hintText: "OTP here",
                                                  hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                              ),
                                              onChanged: (val){
                                                signOTP=val;
                                              },

                                            )
                                        ),

                                      ],
                                    )
                                ),
                                InkWell(
                                  onTap: ()async{
                                    if(await(validateOTP(email,signOTP))){
                                      canSign=true;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(backgroundColor: Colors.green,
                                              content: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    "OTP Verified",
                                                    style: TextStyle(
                                                      fontStyle: FontStyle.italic,
                                                    ),
                                                  )
                                                ],
                                              )
                                          )
                                      );
                                    }else{
                                      canSign=false;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(backgroundColor: Colors.red,
                                              content: Row(
                                                children: [
                                                  Icon(
                                                    Icons.warning_amber_outlined,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    "Wrong OTP! Try Again",
                                                    style: TextStyle(
                                                      fontStyle: FontStyle.italic,
                                                    ),
                                                  )
                                                ],
                                              )
                                          )
                                      );
                                    }
                                    print("verifyotp pressed");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, customHeight(6), 0),
                                    width: customWidth(80),
                                    height: customHeight(50),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(
                                          color: darkCyan.withOpacity(.2),
                                          offset: Offset(3,3),
                                          spreadRadius: 5,
                                          blurRadius: 3
                                      )],
                                      color: darkCyan,
                                      border: Border.all(
                                        width: customWidth(3),
                                        color: darkCyan,              //black38
                                      ),
                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(45),),

                                    ),
                                    child: Text(
                                      "Verify",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: customHeight(15)
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            SizedBox(height: customHeight(30)),
                            Container(
                                width: customWidth(280),
                                height: customHeight(50),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: customWidth(3),
                                    color: Colors.black38,              //black38
                                  ),
                                  borderRadius: BorderRadius.circular(45),

                                ),
                                padding:EdgeInsets.all(customWidth(8)),
                                child:Row(
                                  children: [
                                    Icon(Icons.vpn_key_outlined,color: Colors.black26,size: customWidth(20),),
                                    Expanded(

                                        child: TextField(
                                          obscureText: true,
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: customHeight(14),
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.fromLTRB(
                                                  10,
                                                  0,
                                                  0,
                                                  customHeight(13)
                                              ),
                                              hintText: "Password",
                                              hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                          ),
                                          onChanged: (val){
                                            pwd=val;
                                          },

                                        )
                                    )
                                  ],
                                )
                            ),
                            SizedBox(height: customHeight(30),),
                            //button
                            InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: customWidth(280),
                                height: customHeight(50),
                                decoration: BoxDecoration(
                                  color: lightCyan,
                                  border: Border.all(
                                    width: customWidth(3),
                                    color: darkCyan,              //black38
                                  ),
                                  borderRadius: BorderRadius.circular(45),

                                ),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: customHeight(20),
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),

                              ),
                              onTap: ()async{
                                if(canSign) {
                                  try {
                                    print(userName);
                                    print(email);
                                    var x = await signUpAPI(
                                        url, userName, email, pwd);
                                    user = jsonDecode(x);
                                    print(user);
                                    print("Signup Button Main Pressed");
                                    if (user['message'].toString() ==
                                        'Account Exists!') {
                                      setState(() {
                                        signColor = Colors.red;
                                      });
                                    }
                                    else if (user['message'].toString() ==
                                        'Inserted!') {
                                      UserName = user['userName'];
                                      Email = user['email'];
                                      Password = user['password'];
                                      CurrentDiseases = user['currentDiseases'];
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => homeStack()),
                                      );
                                      print(
                                          'User Name:' + UserName + '\nEmail:' +
                                              Email + '\nPassword:' + Password);
                                    }
                                  }
                                  catch (e) {
                                    print(e);
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Column(
                                            children: [
                                              Icon(Icons
                                                  .report_gmailerrorred_rounded,
                                                color: Colors.black.withOpacity(
                                                    .3), size: 60,),
                                              SizedBox(
                                                height: customHeight(10),),
                                              Text("Connection Error!",
                                                style: TextStyle(
                                                    fontSize: customHeight(
                                                        15)),),
                                              SizedBox(
                                                height: customHeight(5),),
                                              Text(
                                                "Please check that whether you are connected to network or not!",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: customHeight(
                                                        10)),),
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  var count = 0;
                                                  Navigator.popUntil(
                                                      context, (route) {
                                                    return count++ == 1;
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
                                      SnackBar(backgroundColor: Colors.red,
                                          content: Row(
                                            children: [
                                              Icon(
                                                Icons.warning_amber_outlined,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Can't sign you up you are either offline or not verified! ",
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
                              //ISke upar
                            ),

                            SizedBox(height: customHeight(10)),
                            Container(
                              height: customHeight(20),
                              child: Text(
                                "Account Exists! Go back and Log in with these credentials!.",
                                style: TextStyle(
                                  color: signColor,
                                  fontSize: customHeight(15),
                                ),
                              ),
                            ),
                            SizedBox(height: customHeight(5)),
                            Center(
                              child: Container(
                                child: Row(
                                  children: [Spacer(),
                                    InkWell(child: Icon(Icons.arrow_back_ios,size: customHeight(30),color: darkCyan,),
                                        onTap: (){
                                          setState(() {
                                            signy=600;
                                            signTexty=-212;
                                          });
                                        }),
                                    SizedBox(width:customWidth(5)),
                                    InkWell(
                                        child: Text("Go Back",style: TextStyle(fontSize: customHeight(20),color: darkCyan),),
                                        onTap: (){
                                          setState(() {
                                            logy=600;
                                            logTexty=-212;
                                          });
                                        }
                                    ),
                                    Spacer()],
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
         ]
        ),
      ),
      );

  }
}
