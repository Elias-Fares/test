import 'package:flutter/material.dart';

import '../../../core/appcolors.dart';

class RegisterAppBar extends StatelessWidget {
  const RegisterAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          "استكمال بيانات التسحيل",
          style: TextStyle(color: AppColors.blackTitle,  fontWeight: FontWeight.bold),
        ),
        leading: const InkWell(
          child: Icon(Icons.arrow_back_ios_rounded, color: AppColors.primaryGreen,),
        ),
        );
  }
}
