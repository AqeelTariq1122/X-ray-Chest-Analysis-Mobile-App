

import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:flutter/material.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:xrayanalysis/Controller/Controller.dart';
import 'package:xrayanalysis/Screens/CameraScreen.dart';
import 'package:xrayanalysis/Screens/Home.dart';
import 'package:xrayanalysis/Screens/ResultScreen.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  Controller controller=Get.put(Controller());
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Home(),
    CameraScreen(),
    ResultScreen(),
  ];

  File _image;
  final picker=ImagePicker();

  Future getImageFromCamera()async{
    final pickedImage=await picker.getImage(source: ImageSource.camera);
    setState(() {
      if(pickedImage!=null){
        _image=File(pickedImage.path);
      }
      else {
        print("No Image Selected");
      }
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('X~Ray Analysis',style: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        barColor: Colors.lightBlue,
        domeCircleColor: Colors.white,
        selectedIndex: _selectedIndex,
        duration: Duration(milliseconds:400 ),
        domeCircleSize: 41,
        borderRaduis: BorderRadius.circular(15),
        domeHeight: 15,
        barHeight: 47,

        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home),
            selectedColor: Colors.black,
            unselectedColor: Colors.white,
          ),
          MoltenTab(
            icon: Icon(Icons.add_photo_alternate_outlined),
            selectedColor: Colors.black,
            unselectedColor: Colors.white,
          ),
          MoltenTab(
            icon: Icon(Icons.fact_check_outlined),
            selectedColor: Colors.black,
            unselectedColor: Colors.white,
          ),

        ],
      ),
    );

  }
}