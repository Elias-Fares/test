import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/appcolors.dart';

class OrderMapAppBar extends StatelessWidget {
  const OrderMapAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.notifications_active_outlined,
              color: AppColors.primaryGreen,
              size: 35.sp,
            ),
          ),
        ),
      ],
      title: Image.asset("assets/images/logo.png",width: 50.w,),
      leading: InkWell(
        onTap: () {},
        child: Icon(
          Icons.menu_open_sharp,
          color: AppColors.primaryGreen,
          size: 35.sp,
        ),
      ),
    );
  }
}

// AIzaSyBnKVeNjjeIaM15HtQ3LoKJ8BX_W_j_6IE
