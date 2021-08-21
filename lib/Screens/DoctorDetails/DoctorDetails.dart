import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Doctor Details',style: TextStyle(fontSize: 20,fontFamily: 'Manrope',fontWeight: FontWeight.bold ),),
        centerTitle: true,
        leading: InkWell(
            onTap: () => Get.back(),
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Center(
          child: Accordion(
            maxOpenSections: 1,
            headerTextStyle: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,fontFamily: 'Manrope'),
            leftIcon: Icon(Icons.person, color: Colors.white),
            children: [
              //Heart Speacialist
              AccordionSection(
                  isOpen: true,
                  headerText: 'Heart Specialist',
                  content:  Column(
                    children: [
                      Row(
                        children: [
                          Text('Lahore',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Prof. Dr. Ajmal Hasan Naqvi'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Cardiothoracic Surgeon, Vascular Surgeon, Cardiovascular Surgeon, Cardiologist, Cardiac Surgeon'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('M.B.B.S., F.R.C.S., F.R.C.S. (Cardiac Surgery)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 38 90 0939'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Islamabad',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Dr. Muhammad Naeem Malik - Cardiologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Cardiologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, Dip & MD Cardiology'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('0311 1222398'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Karachi',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Prof. Dr. Zamir A Siddiqui - Cardiologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Cardiologist, Diabetologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('MBBS, M.Phil (Clinical Pharmacology), M.D (Cardiology), Dip Diab. (Diplomate Diabetology), Ph.D Scholar (Clinical Pharmacology)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('0311 1222398'
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
              //Chest Speacialist
              AccordionSection(
                  isOpen: true,
                  headerText: 'Chest Specialist',
                  content:  Column(
                    children: [
                      Row(
                        children: [
                          Text('Lahore',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
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
                                Text('Prof. Dr. Shamshad Rasul Awan - Pulmonologist / Lung Specialist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Pulmonologist / Lung Specialist, Lung Surgeon'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, MCPS, FCPS, FCCP (USA)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Islamabad',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Prof. Dr. Zamir A Siddiqui - Cardiologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Cardiologist, Diabetologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('MBBS, M.Phil (Clinical Pharmacology), M.D (Cardiology), Dip Diab. (Diplomate Diabetology), Ph.D Scholar (Clinical Pharmacology)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Karachi',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Dr. Rafiq A. Sheikh'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Asthma Specialist . Allergy Specialist . Pulmonologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, DTC'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('021 371 30 261'
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
              //Gastroenterologists
              AccordionSection(
                  isOpen: true,
                  headerText: 'Gastroenterologists',
                  content:  Column(
                    children: [
                      Row(
                        children: [
                          Text('Lahore',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
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
                                Text('Asst. Prof. Dr. Mehreen Zaman Niazi'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Gastroenterologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, FCPS'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Islamabad',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Asst. Prof. Dr. Salman Javed'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Gastroenterologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS (Pb), MD (USA), MACP (USA), FCPS (Gastro)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Karachi',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Prof. Dr. Ghulam Ali Mundrawala'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('General Physician, Gastroenterologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, MD (Medicine), MCPS'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
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
              //Nephrologists
              AccordionSection(
                  isOpen: true,
                  headerText: 'Nephrologists',
                  content: Column(
                    children: [
                      Row(
                        children: [
                          Text('Lahore',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
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
                                Text('Assoc. Prof. Dr. Mahvesh K Mahmud - General Physician'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('General Physician, Nephrologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, FCPS, Diplomate ABIM (Internal Medicine,Nephrology)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Islamabad',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Assoc. Prof. Dr. Mahvesh K Mahmud - General Physician'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('General Physician, Nephrologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, FCPS, Diplomate ABIM (Internal Medicine,Nephrology)'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('042 325 91 427'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Karachi',style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Assist. Prof. Dr. Munir Afzal'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Neurologist'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('MBBS, FCPS (Neurology), DCN'
                                  ,style: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w800,fontSize: 14),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('021 381 40 600'
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
        ),
      ),
    );
  }
}
