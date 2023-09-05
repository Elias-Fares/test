import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsBtn extends StatelessWidget {
   final String text ;
  final Color btnColor;
  final void Function()? onTap;
  const OrderDetailsBtn({
    super.key, required this.text, required this.btnColor, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: btnColor,
      borderRadius: BorderRadius.circular(20.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.r),
        onTap: () {
          
        },
        child: SizedBox(
          width: 100.w,
          height: 30.h,
          child: Center(child: Text(text)),
          
        )
      ),
    );
  }
}
