import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/functions/sizedboxext.dart';

import '../../../core/appcolors.dart';
import 'orderdetailsbtn.dart';

class OrderCard extends StatelessWidget {
  final String? distance;
  final int? orderNum;
  final String? customerName;
  final String? orderDate;
  final String? orderDetails;
  const OrderCard({
    super.key,
    this.distance,
    this.orderNum,
    this.customerName,
    this.orderDate,
    this.orderDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
          top: MediaQuery.of(context).size.width * 0.04),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 7,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 1)
            ]),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/img.png"),
                  Column(
                    children: [
                       Text(
                        "مطاعم ليمونة",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.sp),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: AppColors.primaryGreen,
                          ),
                          Text(
                            "$distance كم",
                            style:
                                const TextStyle(color: AppColors.primaryGreen),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const Divider(),
              Text(
                "طلب رقم : $orderNum",
                style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              const Divider(),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/persone.jpg",
                      height: 30,
                    ),
                  ),
                  5.w.pw,
                  Text(
                    customerName.toString(),
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.iconColor,
                  ),
                  const Text("  تاريخ الطلب : ", style: TextStyle(color: AppColors.grey),),
                  Text("$orderDate", style: const TextStyle(color: AppColors.grey))
                ],
              ),
              const Divider(),
              Text(
                "$orderDetails",
                maxLines: 2,
                style:  TextStyle(fontSize: 15.sp),
              ),
              const Spacer(),
              Row(
                children: [
                  const OrderDetailsBtn(
                    btnColor: AppColors.grey,
                    text: 'كل التفاصيل',
                  ),
                  10.w.pw,
                  const OrderDetailsBtn(
                    btnColor: AppColors.primaryGreen,
                    text: 'تأكيد الطلب',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
