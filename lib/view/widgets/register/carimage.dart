import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/registercontroller.dart';
import '../../../core/appcolors.dart';

class CarImage extends StatelessWidget {
  const CarImage({
    super.key,
    required this.controller, required this.index,
  });

  final RegisterController controller;
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryGreen, width: 1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: controller.carImage[index],
      ),
    );
  }
}