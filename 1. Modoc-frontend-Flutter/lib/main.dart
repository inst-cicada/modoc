import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:modoc/logIn/mainStackForLogIn.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';

import 'package:modoc/Pages/resultPage.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(MaterialApp(
    color: darkCyan,
    debugShowCheckedModeBanner:false,
    //home: resultPage(),
    home: logStack(),                                                                 //the pages
  ));
}
