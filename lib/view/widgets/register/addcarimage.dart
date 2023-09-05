
import 'package:flutter/material.dart';

import '../../../controller/registercontroller.dart';
import '../../../core/appcolors.dart';

class AddCarImage extends StatelessWidget {
  const AddCarImage({
    super.key,
    required this.controller,
  });

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: 130,
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.control_point_duplicate_sharp,
                color: AppColors.iconColor,
                size: 60,
              ),
              Text(
                "أضف صورة",
                style: TextStyle(
                    fontSize: 16, color: AppColors.lightBlack),
              )
            ],
          ),
        ),
        onTap: () {
          controller.pickImage();
        },
      ),
    );
  }
}