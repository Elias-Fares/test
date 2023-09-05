import 'package:get/get.dart';

class OrderController extends GetxController{
  
  void Function()? goToMap (){
    Get.toNamed("/ordermap");
  }
}