import 'package:get/get.dart';
import 'package:test/binding/initialbinding.dart';
import 'package:test/view/screens/orders.dart';
import 'package:test/view/screens/ordersmap.dart';
import 'package:test/view/screens/register.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(  name: "/", page: () => const Register(), binding: InitialBindings()),
  GetPage(  name: "/ordermap", page: () => const OrderMap(),),
  GetPage(  name: "/orders", page: () => const Orders()),

];
