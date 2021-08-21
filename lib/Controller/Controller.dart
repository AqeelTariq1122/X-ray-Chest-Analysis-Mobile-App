import 'dart:io';

import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

class Controller extends GetxController{

  final picker=ImagePicker();
  var Atelectasis_p0=0.0;
  var Cardiomegaly_p1=0.0;
  var Consolidation_p2=0.0;
  var Edema_p3=0.0;
  var Effusion_p4=0.0;
  var Emphysema_p5=0.0;
  var Fibrosis_p6=0.0;
  var Hernia_p7=0.0;
  var Infiltration_p8=0.0;
  var Mass_p9=0.0;
  var NoFinding_p10=0.0;
  var Nodule_p11=0.0;
  var Pleural_Thickening_p12=0.0;
  var Pneumonia_p13=0.0;
  var Pneumothorax_p14=0.0;
  File image;



  Future getImageFromCamera()async{
    final pickedImage=await picker.getImage(source: ImageSource.camera);

  }
}