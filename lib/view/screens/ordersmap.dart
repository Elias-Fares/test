import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test/controller/ordermapcontroller.dart';
import 'package:test/core/appcolors.dart';
import 'package:test/view/widgets/ordermap/ordermapappbar.dart';

class OrderMap extends StatelessWidget {
  const OrderMap({super.key});

  @override
  Widget build(BuildContext context) {
    OrderMapController controller = Get.put(OrderMapController());
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 55.h),
            child: const OrderMapAppBar()),
        body: GetBuilder<OrderMapController>(
          builder: (controller) => controller.kGooglePlex == null
              ? const Center(
                child: CircularProgressIndicator(
                    color: AppColors.primaryGreen,
                  ),
              )
              : GoogleMap(
                markers: controller.markers ,
                mapType: MapType.hybrid,
                initialCameraPosition: controller.kGooglePlex!,
                onMapCreated: (GoogleMapController controllerr) {
                  controller.googleMapController.complete(controllerr);
                },
              ),
        ));
  }
}
