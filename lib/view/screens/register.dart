import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/controller/registercontroller.dart';
import 'package:test/core/appcolors.dart';
import 'package:test/core/functions/sizedboxext.dart';
import 'package:test/view/widgets/register/addlicenseimage.dart';
import 'package:test/view/widgets/register/signinbtn.dart';
import 'package:test/view/widgets/register/textform.dart';

import '../widgets/register/addcarimage.dart';
import '../widgets/register/carimage.dart';
import '../widgets/register/registerappbar.dart';

class Register extends GetView<RegisterController> {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 55.h),
            child: const RegisterAppBar()),
        body: SingleChildScrollView(
          child: Form(
            key: controller.dataKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.h.ph,
                TextForm(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.car_repair,
                        color: AppColors.iconColor,
                      ),
                      5.w.pw,
                      const Text("رقم المركبة"),
                    ],
                  ),
                  hint: "  رقم المركبة",
                  controller: controller.vehicleNum,
                ),
                TextForm(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.toys_outlined,
                        color: AppColors.iconColor,
                      ),
                      5.w.pw,
                      const Text("نوع المركبة"),
                    ],
                  ),
                  hint: '   نوع المركبة',
                  controller: controller.vehicleType,
                ),
                TextForm(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.drive_file_rename_outline,
                        color: AppColors.iconColor,
                      ),
                      5.w.pw,
                      const Text("موديل المركبة"),
                    ],
                  ),
                  hint: '   موديل المركبة',
                  controller: controller.vehicleModel,
                ),
                TextForm(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.watch_later_outlined,
                        color: AppColors.iconColor,
                      ),
                      5.w.pw,
                      const Text("سنة الصنع"),
                    ],
                  ),
                  hint: '   سنة الصنع',
                  controller: controller.vehicleManufacturingYear,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 10),
                  child: Text(
                    "صور المركبة",
                    style: TextStyle(
                        color: AppColors.blackTitle,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      15.w.pw,
                      AddCarImage(controller: controller),
                      GetBuilder<RegisterController>(builder: (context) {
                        return SizedBox(
                          height: 130,
                          width: 1500,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.carImage.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  controller.carImage[index] == null
                                      ? const Text("no data")
                                      : CarImage(
                                          controller: controller,
                                          index: index,
                                        )
                                ],
                              );
                            },
                          ),
                        );
                      })
                    ],
                  ),
                ),
                 Divider(
                  height: 22.h,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "رخصة القيادة",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.blackTitle,
                              fontWeight: FontWeight.bold),
                        ),
                        GetBuilder<RegisterController>(
                          builder: (context) {
                            return AddLicenseImage(controller: controller, onTap: () {
                              controller.pickDrivingLicenceImage();
                            }, licenseType: 'drive',);
                          }
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "رخصة السيارة",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.blackTitle,
                              fontWeight: FontWeight.bold),
                        ),
                        GetBuilder<RegisterController>(
                          builder: (context) {
                            return AddLicenseImage(controller: controller, onTap: () {
                              controller.pickCarLicenceImage();
                            }, licenseType: 'car',);
                          }
                        )
                      ],
                    ),
                  ],
                ),
                10.h.ph,
                 Align(alignment: Alignment.center, child: SignInBtn(onTap: () {
                  controller.goToOrders();
                },)),
                 10.h.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
