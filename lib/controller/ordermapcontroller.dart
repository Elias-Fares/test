import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderMapController extends GetxController {
  late Completer<GoogleMapController> googleMapController;
  late Position currentLocation;

  var lat;
  var lang;

  CameraPosition? kGooglePlex;

  Set<Marker> markers = {

  };

  Future<void> getLatAndLang() async {
    currentLocation =
        await Geolocator.getCurrentPosition().then((value) => value);
    lat = currentLocation.latitude;
    lang = currentLocation.longitude;
    kGooglePlex = CameraPosition(
      target: LatLng(lat, lang),
      zoom: 14.4746,
    );
    print("initialized");
    update();
  }

  @override
  void onInit() {
    googleMapController = Completer();
    getLatAndLang();
    super.onInit();
  }
}
