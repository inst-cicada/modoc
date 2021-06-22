import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:modoc/Pages/homeScreen.dart';

import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/functionsAndClass.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';
import 'package:modoc/logIn/API/predictionAPI.dart';
import 'package:modoc/logIn/API/url.dart';
import 'package:modoc/logIn/API/userVar.dart';
import 'package:modoc/Pages/resultPage.dart';

class boolVal{
  final int pos;
  bool val1;
  bool val2;
  bool val3;
  bool val4;
  bool val5;
  bool val6;
  bool val7;
  bool val8;
  bool val9;
  bool val10;
  bool val11;
  bool val12;
  boolVal(
      this.pos,{
      this.val1,
      this.val2,
      this.val3,
      this.val4,
      this.val5,
      this.val6,
      this.val7,
      this.val8,
      this.val9,
      this.val10,
      this.val11,
      this.val12,}
  );
}


class symptomSelection extends StatefulWidget {
  const symptomSelection({Key key}) : super(key: key);

  @override
  _symptomSelectionState createState() => _symptomSelectionState();
}

class _symptomSelectionState extends State<symptomSelection> {
  //list for checkbox default values and changed values
  List<boolVal> boolList=[
    boolVal(
      1,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      2,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      3,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      4,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      5,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      6,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      7,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      8,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      9,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      10,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
    boolVal(
      11,
      val1: false,
      val2: false,
      val3: false,
      val4: false,
      val5: false,
      val6: false,
      val7: false,
      val8: false,
      val9: false,
      val10: false,
      val11: false,
      val12: false,
    ),
  ];
  //list for symptoms
  List<String> temp=[];
  Color errorText=Colors.white;
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            height: customHeight(812),
            child: Stack(
              children: [
                SizedBox(
                  width: customWidth(375),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: customHeight(70),),
                      Text(
                          "Disease Prediction",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.black.withOpacity(.3),
                          ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: customHeight(650),
                  child: Swiper(
                      itemCount: formData.length,
                      itemWidth: customWidth(260),
                      itemHeight: customHeight(380),
                      loop: false,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(),
                      ),
                      itemBuilder: (context, index){
                        return Container(
                            child:
                              Column(
                                children: [SizedBox(height: customHeight(150),),
                                  Card(
                                      elevation: 30,
                                      shadowColor: darkestCyan,
                                      shape: RoundedRectangleBorder(side: BorderSide(color: lightestCyan,width: customHeight(3)),
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(30),
                                              right: Radius.circular(30))
                                      ),
                                      color: lightestCyan,
                                      child:Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Container(
                                          height: customHeight(380),
                                          width: customWidth(290),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Step '+(index+1).toString()+':\t',
                                                    style: TextStyle(
                                                      fontSize: customHeight(18),
                                                      fontWeight: FontWeight.w800,
                                                      color: darkestCyan,
                                                      decoration: TextDecoration.none,
                                                    ),
                                                  ),
                                                  Text(
                                                    formData[index].question,
                                                    style: TextStyle(
                                                      fontSize: customHeight(18),
                                                      fontWeight: FontWeight.w800,
                                                      color: darkestCyan,
                                                      decoration: TextDecoration.none,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: customHeight(38),),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      //main-element
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                            color: boolList[index].val1?darkCyan:Colors.transparent,
                                                            borderRadius: BorderRadius.circular(15),
                                                            border: Border.all(
                                                              color: darkCyan,
                                                              width: 2
                                                            )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val1?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                                ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice1,style: TextStyle(
                                                                fontSize: customHeight(12),
                                                                color: boolList[index].val1?Colors.white:darkCyan,
                                                                fontFamily: "Avenir",
                                                                fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val1=!boolList[index].val1;
                                                            if(boolList[index].val1){
                                                              formData[index].func1();
                                                            }
                                                            else{
                                                              formData[index].notfunc1();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: formData[index].position==5||formData[index].position==10?customHeight(35):customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val2?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val2?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice2,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val2?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val2=!boolList[index].val2;
                                                            if(boolList[index].val2){
                                                              formData[index].func2();
                                                            }
                                                            else{
                                                              formData[index].notfunc2();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val3?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val3?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice3,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val3?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val3=!boolList[index].val3;
                                                            if(boolList[index].val3){
                                                              formData[index].func3();
                                                            }
                                                            else{
                                                              formData[index].notfunc3();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: formData[index].position==8||formData[index].position==10?customHeight(35):customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val4?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val4?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice4,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val4?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val4=!boolList[index].val4;
                                                            if(boolList[index].val4){
                                                              formData[index].func4();
                                                            }
                                                            else{
                                                              formData[index].notfunc4();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: formData[index].position==10?customHeight(35):customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val5?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val5?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice5,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val5?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val5=!boolList[index].val5;
                                                            if(boolList[index].val5){
                                                              formData[index].func5();
                                                            }
                                                            else{
                                                              formData[index].notfunc5();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val6?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val6?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice6,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val6?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val6=!boolList[index].val6;
                                                            if(boolList[index].val6){
                                                              formData[index].func6();
                                                            }
                                                            else{
                                                              formData[index].notfunc6();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),



                                                      //end of leftside column
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val7?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val7?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice7,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val7?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val7=!boolList[index].val7;
                                                            if(boolList[index].val7){
                                                              formData[index].func7();
                                                            }
                                                            else{
                                                              formData[index].notfunc7();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: formData[index].position==8||formData[index].position==10?customHeight(35):customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val8?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val8?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice8,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val8?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val8=!boolList[index].val8;
                                                            if(boolList[index].val8){
                                                              formData[index].func8();
                                                            }
                                                            else{
                                                              formData[index].notfunc8();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: formData[index].position==10?customHeight(35):customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val9?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val9?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice9,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val9?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val9=!boolList[index].val9;
                                                            if(boolList[index].val9){
                                                              formData[index].func9();
                                                            }
                                                            else{
                                                              formData[index].notfunc9();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val10?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val10?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice10,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val10?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val10=!boolList[index].val10;
                                                            if(boolList[index].val10){
                                                              formData[index].func10();
                                                            }
                                                            else{
                                                              formData[index].notfunc10();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val11?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val11?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice11,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val11?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val11=!boolList[index].val11;
                                                            if(boolList[index].val11){
                                                              formData[index].func11();
                                                            }
                                                            else{
                                                              formData[index].notfunc11();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),
                                                      InkWell(
                                                        child: AnimatedContainer(
                                                          height: formData[index].position==5?customHeight(35):customHeight(30),
                                                          duration:Duration(milliseconds: 600),
                                                          decoration: BoxDecoration(
                                                              color: boolList[index].val12?darkCyan:Colors.transparent,
                                                              borderRadius: BorderRadius.circular(15),
                                                              border: Border.all(
                                                                  color: darkCyan,
                                                                  width: 2
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: customWidth(3),),
                                                              boolList[index].val12?Icon(
                                                                Icons.radio_button_on,
                                                                size: customHeight(15),
                                                                color: Colors.white,
                                                              ):Icon(
                                                                Icons.radio_button_off,
                                                                size: customHeight(15),
                                                                color: darkCyan,
                                                              ),
                                                              SizedBox(width: customWidth(3),),
                                                              Text(formData[index].choice12,style: TextStyle(
                                                                  fontSize: customHeight(12),
                                                                  color: boolList[index].val12?Colors.white:darkCyan,
                                                                  fontFamily: "Avenir",
                                                                  fontWeight: FontWeight.w600
                                                              ),
                                                              ),
                                                              SizedBox(width: customWidth(8),)
                                                            ],
                                                          ),
                                                        ),
                                                        onTap: (){
                                                          setState(() {
                                                            boolList[index].val12=!boolList[index].val12;
                                                            if(boolList[index].val12){
                                                              formData[index].func12();
                                                            }
                                                            else{
                                                              formData[index].notfunc12();
                                                            }
                                                          });
                                                        },
                                                      ),
                                                      SizedBox(height: customHeight(20),),




                                                      //end of right side
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                        ),
                                      )
                                  )

                                ],
                              ),

                        );
                      }

                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: customHeight(700),),
                    Center(
                      child: SizedBox(
                        width: customWidth(200),
                        child: ElevatedButton(
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
                            if(symptoms.length>2) {
                              List<String> sympPostData;
                              String link=URL;
                              sympPostData = symptoms;
                              symptoms = [];
                              print("selected symptoms are: \n");
                              print(sympPostData.join(","));
                              var temporary=await predictionAPI(link,UserName, sympPostData.join(","));
                              var details=jsonDecode(temporary);
                              print(details);
                              Disease=details['Disease'];
                              ICD=details['icd'];
                              Description=details['Description'];
                              Precaution1=details['Precaution1'];
                              Precaution2=details['Precaution2'];
                              Precaution3=details['Precaution3'];
                              Precaution4=details['Precaution4'];
                              CurrentDiseases=details['currentDiseases'];
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => resultPage()),
                              );

                            }
                            else{
                              setState(() {
                                errorText=Colors.red;
                              });
                            }


                          },
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: customWidth(10),),
                              Text(
                                "Predict your Disease",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: customHeight(10)),
                    Text(
                      "Select More than two symptoms to predict your disease",
                      style: TextStyle(
                        color: errorText,
                      ),
                    )
                  ],
                ),
              ],
            )

        ),
      ),
    );
  }
}
