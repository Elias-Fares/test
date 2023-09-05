import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/controller/ordermapcontroller.dart';
import 'package:test/core/appcolors.dart';
import 'package:test/model/static/ordersmodel.dart';
import 'package:test/view/widgets/order/gotomapbtn.dart';
import 'package:test/view/widgets/order/orderappbar.dart';
import 'package:test/view/widgets/order/ordercard.dart';

import '../../controller/ordercontroller.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    OrderController controller = Get.put(OrderController());
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GoToMapBtn(
          onTap: () {
            controller.goToMap();
          },
        ),
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 55.h),
            child: const OrderAppBar()),
        body: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) => OrderCard(
            distance: orders[index].distance,
            customerName: orders[index].customerName,
            orderDate: orders[index].orderDate,
            orderDetails: orders[index].orderDetails,
            orderNum: orders[index].orderNum,
          ),
        ));
  }
}
