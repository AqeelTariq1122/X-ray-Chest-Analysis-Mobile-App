import 'dart:io';
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
import 'package:http/http.dart' as http;
import 'package:back_pressed/back_pressed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:xrayanalysis/Controller/Controller.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final controller = Get.put(Controller());
  var mydata;
  Upload() async {
    var stream =
    new http.ByteStream(DelegatingStream.typed(controller.image.openRead()));
    var length = await controller.image.length();
    var uri = Uri.parse('http://192.168.10.8:5000/predict/');
    var request = new http.MultipartRequest("POST", uri);
    var multipartFile = new http.MultipartFile('file', stream, length,
        filename: basename(controller.image.path));
    //contentType: new MediaType('image', 'png'));

    request.files.add(multipartFile);
    var response = await request.send();
    print(response.statusCode);

    if (response.statusCode == 200) {
      response.stream.transform(utf8.decoder).listen((value) {
        print(value);
        setState(() {
          mydata = value.toString();
          print(mydata);
          //decoding Data
          print('This is Response Data');
          var decodeddata = json.decode(mydata);
          controller.Atelectasis_p0 = decodeddata["predictions"][0][0];
          controller.Cardiomegaly_p1 = decodeddata["predictions"][0][1];
          controller.Consolidation_p2 = decodeddata["predictions"][0][2];
          controller.Edema_p3 = decodeddata["predictions"][0][3];
          controller.Effusion_p4 = decodeddata["predictions"][0][4];
          controller.Emphysema_p5 = decodeddata["predictions"][0][5];
          controller.Fibrosis_p6 = decodeddata["predictions"][0][6];
          controller.Hernia_p7 = decodeddata["predictions"][0][7];
          controller.Infiltration_p8 = decodeddata["predictions"][0][8];
          controller.Mass_p9 = decodeddata["predictions"][0][9];
          controller.NoFinding_p10 = decodeddata["predictions"][0][10];
          controller.Nodule_p11 = decodeddata["predictions"][0][11];
          controller.Pleural_Thickening_p12 = decodeddata["predictions"][0][12];
          controller.Pneumonia_p13 = decodeddata["predictions"][0][13];
          controller.Pneumothorax_p14 = decodeddata["predictions"][0][14];
          print(controller.Atelectasis_p0);
        });
      });
    } else {
      Get.snackbar('error', 'error');
    }
  }
  var call;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    call=Upload();
  }

  @override
  Widget build(BuildContext context) {
    return OnBackPressed(
        perform: () {
          Get.back();
        },
        child: Scaffold(
            body: FutureBuilder(
          future: call,
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState== ConnectionState.waiting)
              return Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
              ));
            else {
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              '  Results',
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Manrope'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Atelectasis_p0.toDouble(),
                          center: Text(
                            "                                           Atelectasis ",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Cardiomegaly_p1.toDouble(),
                          center: Text(
                            "                                           Cardiomegaly",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Consolidation_p2.toDouble(),
                          center: Text(
                            "                                           Consolidation",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Edema_p3.toDouble(),
                          center: Text(
                            "                                           Edema",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Effusion_p4.toDouble(),
                          center: Text(
                            "                                           Effusion",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Emphysema_p5.toDouble(),
                          center: Text(
                            "                                           Emphysema",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Fibrosis_p6.toDouble(),
                          center: Text(
                            "                                           Fibrosis",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Hernia_p7.toDouble(),
                          center: Text(
                            "                                           Hernia",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Infiltration_p8.toDouble(),
                          animation: true,
                          center: Text(
                            "                                           Infiltration",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Mass_p9.toDouble(),
                          center: Text(
                            "                                           Mass",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.NoFinding_p10.toDouble(),
                          center: Text(
                            "                                           NoFinding",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Nodule_p11.toDouble(),
                          center: Text(
                            "                                           Nodule",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          percent: controller.Pleural_Thickening_p12.toDouble(),
                          center: Text(
                            "                                           Pleural_Thickening",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          animation: true,
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          animation: true,
                          lineHeight: 20.0,
                          percent: controller.Pneumonia_p13.toDouble(),
                          center: Text(
                            "                                           Pneumonia",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 20,
                          lineHeight: 20.0,
                          animation: true,
                          percent: controller.Pneumothorax_p14.toDouble(),
                          center: Text(
                            "                                           Pneumothorax",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          backgroundColor: Colors.blueGrey[100],
                          progressColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.defaultDialog(

                                  title: "\nUnder Supervision",
                                  content: Column(
                                    children: [
                                      Text("Mr. Naveed Anwer Butt\nAssistant Prof. University of Gujrat",style: TextStyle(
                                          fontFamily: 'Manrope',
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text("www.linkedin.com/in/naveed-anwer-butt-b669a7133/\n",style: TextStyle(
                                          fontFamily: 'Manrope',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                      ),),

                                      Column(
                                        children: [
                                          Text("Group ( BSCS 17-A )",style: TextStyle(
                                              fontFamily: 'Manrope',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600
                                          ),),
                                          Text("*Muhammad Suleman Hamza\n*Aqeel Tariq\n*Hafiz Muneeb Ahmed ",style: TextStyle(
                                              fontFamily: 'Manrope',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Tooltip(
                                message: 'App Info',
                                child: FlatButton(
                                  minWidth: 100,
                                  child: Icon(
                                    Icons.info_outline,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                    );
                  });
            }
          },
        )));
  }
}
