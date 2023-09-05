import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/appcolors.dart';

class GoToMapBtn extends StatelessWidget {
  final void Function()? onTap;
  const GoToMapBtn({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryGreen,
      borderRadius: BorderRadius.circular(20.r),
      child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: onTap,
          child: SizedBox(
            width: 250.w,
            height: 50.h,
            child: Center(
                child: Text(
                  "الذهاب الى الخريطة",
              style: TextStyle(fontSize: 18.sp, color: AppColors.white),
            )),
          )),
    );
  }
}
