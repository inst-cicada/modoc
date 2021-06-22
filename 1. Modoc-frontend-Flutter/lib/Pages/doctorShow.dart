import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:modoc/Pages/resultPage.dart';
import 'package:modoc/customConfigurations/screenMaping.dart';
import 'package:modoc/customConfigurations/colorProfiles.dart';


var doctorList=[];

class searchDoctors extends StatefulWidget {
  const searchDoctors({Key key}) : super(key: key);

  @override
  _searchDoctorsState createState() => _searchDoctorsState();
}

class _searchDoctorsState extends State<searchDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        iconTheme: IconThemeData(
          color: darkCyan,
        ),
        centerTitle: true,
        title: Text(
          "Doctors for "+ICD,
          style: TextStyle(
            color: darkCyan,fontSize: 18,fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Container(
        width: customWidth(375),
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: doctorList.length,
          itemBuilder: (context,index){
            return ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                "Name: "+doctorList[index].split(',')[0],
                style: TextStyle(
                  color: darkCyan,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              childrenPadding: EdgeInsets.fromLTRB(
                  customWidth(25),
                  customHeight(10),
                  customWidth(25),
                  customHeight(10)
              ),
              expandedAlignment: Alignment.centerLeft,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "About",
                    style: TextStyle(
                      color: midCyan,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: customHeight(15),),
                  Text(
                    doctorList[index].split(',')[1],
                    style: TextStyle(
                      color: midCyan,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: customHeight(15),),
                  Text(
                    "Click the below button for appointment:",
                    style: TextStyle(
                      color: midCyan,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: customHeight(10),),
                  SizedBox(
                    width: customWidth(180),
                    child: ElevatedButton(
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
                            return darkCyan;
                          },
                          ) ,
                          foregroundColor: MaterialStateProperty.all(lightestCyan)
                      ),
                      onPressed: (){
                        String devNo="tel:"+doctorList[index].split(',')[2];
                        launch(devNo);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.call,size: customWidth(12),),
                          SizedBox(width: customWidth(10),),
                          Text(
                            "Make An Appointment",
                            style: TextStyle(
                              fontSize: customWidth(12),
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                  ])
              ],
            );
          }
        ),
      ),
    );
  }
}
