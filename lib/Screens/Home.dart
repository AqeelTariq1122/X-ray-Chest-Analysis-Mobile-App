import 'package:back_pressed/back_pressed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xrayanalysis/Screens/DiseaseDetails/DiseaseDetails.dart';
import 'package:xrayanalysis/Screens/DoctorDetails/DoctorDetails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return OnBackPressed(
      perform: (){
        SystemNavigator.pop();
      },
      child: Scaffold(
          body: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width ,
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:12.0,left: 25),
                        child: Row(
                          children: [
                            Text('Pathologies',style: TextStyle(fontSize: 20,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25,right: 5),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(diseaseDetail());
                            },
                            child: Row(
                               children: [
                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage('images/3.jpg'),
                                           fit: BoxFit.fitHeight,
                                         ),
                                         shape: BoxShape.circle,
                                       ),
                                     ),
                                     SizedBox(height: 10,),
                                     Text('Pneumonia',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 17,),

                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage(
                                               'images/6.jpg'),
                                           fit: BoxFit.fill,
                                         ),
                                         shape: BoxShape.circle,
                                       ),

                                     ),
                                     SizedBox(height: 10,),
                                     Text('Nodule',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 10,),
                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage(
                                               'images/2.jpg'),
                                           fit: BoxFit.fill,
                                         ),
                                         shape: BoxShape.circle,
                                       ),

                                     ),
                                     SizedBox(height: 10,),
                                     Text('Cardiomegaly',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 17,),
                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage('images/7.jpg'),
                                           fit: BoxFit.contain,
                                         ),
                                         shape: BoxShape.circle,
                                       ),

                                     ),
                                     SizedBox(height: 10,),
                                     Text('Emphysema',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 17,),
                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage(
                                               'images/1.jpg'),
                                           fit: BoxFit.cover,
                                         ),
                                         shape: BoxShape.circle,
                                       ),

                                     ),
                                     SizedBox(height: 10,),
                                     Text('Atelectasis',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 17,),
                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage(
                                               'images/5.jpg'),
                                           fit: BoxFit.cover,
                                         ),
                                         shape: BoxShape.circle,
                                       ),

                                     ),
                                     SizedBox(height: 10,),
                                     Text('Hernia',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 17,),
                                 Column(
                                   children: [
                                     SizedBox(height: 20,),
                                     Container(
                                       height: MediaQuery.of(context).size.height/10,
                                       width:MediaQuery.of(context).size.width/5,
                                       decoration: BoxDecoration(
                                         boxShadow: <BoxShadow>[
                                           BoxShadow(
                                               color: Colors.blue[200],
                                               blurRadius: 7.0,
                                               offset: Offset(0.0, 0.0),
                                               spreadRadius: 0
                                           )
                                         ],
                                         color: Colors.red,
                                         image: DecorationImage(
                                           image: AssetImage(
                                               'images/4.jpg'),
                                           fit: BoxFit.cover,
                                         ),
                                         shape: BoxShape.circle,
                                       ),

                                     ),
                                     SizedBox(height: 10,),
                                     Text('Fibrosis',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                   ],
                                 ),
                                 SizedBox(width: 17,),





                               ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      //Find A Doctor
                      Padding(
                        padding: const EdgeInsets.only(top:12.0,left: 25),
                        child: Row(
                          children: [
                            Text('Find a Doctor',style: TextStyle(fontSize: 20,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/5,
                                width:MediaQuery.of(context).size.width/3,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(DoctorDetails());
                                  },
                                  child: Card(
                                    shadowColor: Colors.black,
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.asset('images/doc2.jpg',
                                    fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    //margin: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              Text('Heart Specialist',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/5,
                                width:MediaQuery.of(context).size.width/3,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(DoctorDetails());
                                  },
                                  child: Card(
                                    shadowColor: Colors.black,
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.asset('images/doc1.png',
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    //margin: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              Text('Chest Specialist',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/5,
                                width:MediaQuery.of(context).size.width/3,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(DoctorDetails());
                                  },
                                  child: Column(
                                    children: [
                                      Card(
                                        shadowColor: Colors.black,
                                        semanticContainer: true,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Image.asset('images/doc3.jpg',
                                            fit: BoxFit.fitHeight,

                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        elevation: 5,
                                       // margin: EdgeInsets.all(10),
                                      ),
                                      Text('Gastroenterologists',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/5,
                                width:MediaQuery.of(context).size.width/3,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(DoctorDetails());
                                  },
                                  child: Column(
                                    children: [
                                      Card(
                                        shadowColor: Colors.black,
                                        semanticContainer: true,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Image.asset('images/doc3.jpg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        elevation: 5,
                                        // margin: EdgeInsets.all(10),
                                      ),
                                      Text('  Nephrologists',style: TextStyle(fontSize: 15,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height/8,),

          ]),
                ),
              )
      ),
      ),
    );
  }
}
