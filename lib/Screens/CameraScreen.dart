import 'dart:convert';

import 'package:back_pressed/back_pressed.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:xrayanalysis/Controller/Controller.dart';
import 'package:xrayanalysis/Screens/ResultScreen.dart';

Dio dio = new Dio();

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File _image;
  final picker = ImagePicker();
  final controller = Get.put(Controller());

  postdata() {}
  Future getImageFromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
        setState(() {
          controller.image = _image;
          img=_image;
        });
      } else {
        print("No Image Selected");
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
        setState(() {
          controller.image = _image;
        });
      } else {
        print("No Image Selected");
      }
    });
  }

  var mydata;
  var data;
  File img;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return OnBackPressed(
      perform: () {
        SystemNavigator.pop();
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              child: controller.image == null
                  ? Column(
                      children: [
                        Text("No Image Selected"),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.file(
                          controller.image,
                          height:MediaQuery.of(context).size.height/3.7,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors
                                .black, //specify the button's elevation color
                            elevation: 4.0, //buttons Material shadow
                            textStyle: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            //specify the button's text TextStyle
                            padding: EdgeInsets.only(right: 15, left: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    50.0)), // set the buttons shape. Make its birders rounded etc
                          ),
                          icon: Icon(
                            Icons.cloud_upload,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          label: Text('Upload Image'),
                          onPressed: () {
                            print('Upload Image Button is Pressed');

                            Get.snackbar('Image is Uploading to Server',
                                'For results go to Result Screen ',duration: Duration(seconds: 8),barBlur: 10,margin: EdgeInsets.only(top: 2),backgroundColor: Colors.blue[100]);
                          },
                        )
                      ],
                    ),
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/1111),

            //choose image from camera and gallery
            FlatButton(
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
              onPressed: getImageFromCamera,
              child: Text('Choose Image From Camera',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold)),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor:
                    Colors.black, //specify the button's elevation color
                elevation: 4.0, //buttons Material shadow
                textStyle: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                //specify the button's text TextStyle
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, right: 25, left: 25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        50.0)), // set the buttons shape. Make its birders rounded etc
              ),
              child: Text(
                'Choose Image From Gallery',
              ),
              onPressed: getImageFromGallery,
            ),
          ],
        ),
      ),
    );
  }
}
