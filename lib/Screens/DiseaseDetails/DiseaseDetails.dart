import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:accordion/accordion.dart';



class diseaseDetail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Diseasedata();
  }
}

class Diseasedata extends StatelessWidget //__
{
  build(context) => Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Disease Details',
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: () => Get.back(), child: Icon(Icons.arrow_back_ios)),
        ),
        body: Accordion(
          maxOpenSections: 1,
          headerTextStyle: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,fontFamily: 'Manrope'),
          leftIcon: Icon(Icons.coronavirus, color: Colors.white),
          children: [
            AccordionSection(
              isOpen: true,
              headerText: 'Pneumonia',
              content: Column(
                children: [
                  Row(
                    children: [
                      Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  //detail symptoms
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('*Cough produce greenish,yellow or even bloody mucusFever '
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Fever, sweating and shaking chills'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Shortness of breath'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Rapid, shallow breathing'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Loss of appetite, low energy, and fatigue'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('Preventions',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  //detail preventions
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('*Eat right, with plenty of fruits and vegetables'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Exercise'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Get enough sleep'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Quit smoking'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('*Stay away from sick people, if possible'
                              ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              )
            ),
            AccordionSection(
                isOpen: true,
                headerText: 'Nodule',
                content: Column(
                  children: [
                    Row(
                      children: [
                        Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail symptoms
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Weight loss'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Muscle weakness'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Heat intolerance'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Anxiousness'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Irregular heart beat and Weak bones'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Treatment',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail preventions
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Chemotherapy'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Radiation Therapy'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Surgery'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
            AccordionSection(
                isOpen: true,
                headerText: 'Cardiomegaly',
                content: Column(
                  children: [
                    Row(
                      children: [
                        Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail symptoms
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Breathing problems'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Shortness of breath'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Dizziness'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Heart palpitations'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Preventions',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail preventions
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Stop Smoking'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Maintaining a healthy weight'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Monitoring blood pressure regularly'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Sleeping 7 to 9 hours a night'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
            AccordionSection(
                isOpen: true,
                headerText: 'Emphysema',
                content: Column(
                  children: [
                    Row(
                      children: [
                        Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail symptoms
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Frequent coughing or wheezing.'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*A cough that produces a lot mucus'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Tightness in your chest.'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Preventions',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail preventions
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Exercise regularly'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Get recommended vaccinations'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Protect yourself from cold air'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Quit smoking'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
            AccordionSection(
                isOpen: true,
                headerText: 'Atelectasis',
                content: Column(
                  children: [
                    Row(
                      children: [
                        Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail symptoms
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Coughing'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Chest pain'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Skin and lips turning blue'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Shortness of breath'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Preventions',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail preventions
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Deep breathing exercises'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Remove or relieve any blockage in the airways by bronchoscopy'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Clap on the chest to loosen mucus plugs in the airway'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
            AccordionSection(
                isOpen: true,
                headerText: 'Hernia',
                content: Column(
                  children: [
                    Row(
                      children: [
                        Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail symptoms
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Pain while lifting'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Increased pain at the site of the bulge'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*A dull aching sensation'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Preventions',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail preventions
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Maintain a healthy body weight'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Exercise'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Avoid constipation'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Quit smoking'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Incorporate high-fiber foods into your diet'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
            AccordionSection(
                isOpen: true,
                headerText: 'Fibrosis',
                content: Column(
                  children: [
                    Row(
                      children: [
                        Text('Symptoms',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail symptoms
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Very salty-tasting skin'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Male infertility'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Poor growth or weight gain in spite of a good appetite'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Shortness of breath'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Preventions',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //detail preventions
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('*Avoid indoor and outdoor pollutants'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Mask and distance to limit exposure to COVID-19'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Exercise'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('*Quit smoking'
                                ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),

          ],
        ),
      );
} //__
