import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/appcolors.dart';

class SignInBtn extends StatelessWidget {
  final void Function()? onTap;
  const SignInBtn({
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
            width: 300.w,
            height: 50.h,
            child: Center(
                child: Text(
              "تأكيد انشاء الحساب",
              style: TextStyle(fontSize: 18.sp, color: AppColors.white),
            )),
          )),
    );
  }
}
