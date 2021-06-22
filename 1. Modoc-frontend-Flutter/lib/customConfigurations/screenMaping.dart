import "package:flutter/material.dart";
class customSize {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  //static Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData=MediaQuery.of(context);
    screenWidth=_mediaQueryData.size.width;
    screenHeight=_mediaQueryData.size.height;
    //orientation=_mediaQueryData.orientation;
  }
}

double customHeight(double h){
  double screenHeight=customSize.screenHeight;
  //using designer height 812 and .0 for making it double
  return (h/812.0)*screenHeight;
}

double customWidth(double w){
  double screenWidth=customSize.screenWidth;
  //using designer width 375 and .0 for making it double
  return (w/375.0)*screenWidth;
}