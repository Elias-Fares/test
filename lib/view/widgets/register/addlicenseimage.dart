import 'package:flutter/material.dart';

import '../../../controller/registercontroller.dart';
import '../../../core/appcolors.dart';

class AddLicenseImage extends StatelessWidget {
  const AddLicenseImage({
    super.key,
    required this.controller,
    this.onTap,
    required this.licenseType,
  });

  final RegisterController controller;
  final String licenseType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 130,
            child: Stack(
              alignment: Alignment.center,
              children: [
                licenseType == "car"
                    ? controller.carLicenseImagee == null
                        ? const Text("")
                        : Image.file(controller.carLicenseImagee!)
                    : const Text(""),
                licenseType == "drive"
                    ? controller.drivinglicenceImage == null
                        ? const Text("")
                        : Image.file(controller.drivinglicenceImage!)
                    : const Text(""),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.control_point_duplicate_sharp,
                      color: AppColors.iconColor,
                      size: 60,
                    ),
                    Text(
                      "أضف صورة",
                      style:
                          TextStyle(fontSize: 16, color: AppColors.lightBlack),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
