import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/appcolors.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              
            },
            child: Icon(
              Icons.notifications_active_outlined,
              color: AppColors.primaryGreen,
              size: 35.sp,
            ),
          ),
        ),
      ],
      title: const Center(
        child: Text("الطلبات",
            style: TextStyle(
                color: AppColors.blackTitle, fontWeight: FontWeight.bold)),
      ),
      leading: InkWell(
        onTap: () {
          
        },
        child: Icon(
          Icons.menu_open_sharp,
          color: AppColors.primaryGreen,
          size: 35.sp,
        ),
      ),
    );
  }
}
