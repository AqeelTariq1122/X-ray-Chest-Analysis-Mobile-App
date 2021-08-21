import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xrayanalysis/BottomNavBar/BottomNavBar.dart';
import 'package:xrayanalysis/Screens/Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Expanded(
                flex: 10,
                child: Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blueGrey[700],
                        Colors.blue[600]
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset('images/xray.svg',width: 130,),
                        // Image.asset(),
                      ),
                      Center(
                        child: Text(
                          '\n\nChest X-Ray Analysis',
                          style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Manrope',fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 200,
                        child: Center(
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.blue[200],
                            minHeight: 2,
                            valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue[600],
                        Colors.blue[400]
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.copyright,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            ' 2021 Chest X-Ray (All Rights Reserved)',
                            style: TextStyle(color: Colors.white,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Get.to(BottomNavBar());
  }
}


//
// checkVisitingFlag()async{
//
//   if(visitingFlag==true){
//     Get.to(BottomNavBar());
//   }
//   else
//   {
//    // Get.to(Onbording());
//   }
// }
// //
// getVisitingFlag()async{
//   SharedPreferences prefs=await SharedPreferences.getInstance();
//   bool check= prefs.getBool("visit");
//   print('Check is $check');
//   return check;
// }






