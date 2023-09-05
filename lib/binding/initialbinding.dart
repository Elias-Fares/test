import 'package:get/get.dart';
import 'package:test/controller/registercontroller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start 
    Get.put(RegisterController()) ; 
  }
}
