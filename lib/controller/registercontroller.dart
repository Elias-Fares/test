import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController extends GetxController {
  late TextEditingController vehicleNum;
  late TextEditingController vehicleType;
  late TextEditingController vehicleModel;
  late TextEditingController vehicleManufacturingYear;

  GlobalKey dataKey = GlobalKey();

  File? imagee;
  File? drivinglicenceImage;
  File? carLicenseImagee;

  List carImage = [];

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      imagee = imageTemporary;
      carImage.add(Image.file(
        imagee!,
      ));
      print(carImage.length);
      update();
    } on PlatformException catch (e) {
      print("failed to pick the image $e");
    }
  }

  Future pickDrivingLicenceImage() async {
    try {
      final image2 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image2 == null) return;

      final imageTemporary2 = File(image2.path);
      drivinglicenceImage = imageTemporary2;
      update();
    } on PlatformException catch (e) {
      print("failed to pick the image $e");
    }
  }

  Future pickCarLicenceImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      carLicenseImagee = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print("failed to pick the image $e");
    }
  }

  void Function()? goToOrders() {
    Get.toNamed("/orders");
  }

    Future getPermission() async {
    bool services;
    LocationPermission per;
    services = await Geolocator.isLocationServiceEnabled();

    if (services == false) {
      const AlertDialog(
        title: Text("الخدمات"),
        content: Text("الخدمة غير متوفرة"),
      );
    }

    per = await Geolocator.checkPermission();

    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
    }
    print("============================");
    print(per);
    print("============================");
    return per;
  }

  @override
  void onInit() {
    vehicleNum = TextEditingController();
    vehicleType = TextEditingController();
    vehicleModel = TextEditingController();
    vehicleManufacturingYear = TextEditingController();
    getPermission();
    super.onInit();
  }
}
