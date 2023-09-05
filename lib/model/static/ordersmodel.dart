class OrdersModel {
  final String? distance;
  final int? orderNum;
  final String? customerName;
  final String? orderDate;
  final String? orderDetails;
  OrdersModel(
      {this.distance,
      this.orderNum,
      this.orderDate,
      this.customerName,
      this.orderDetails});
}

List<OrdersModel> orders = [
  OrdersModel(
    distance: "3.2",
    customerName: "قاسم الفهد",
    orderDate: "4/4/2024",
    orderDetails: "وجبة الفراخ المشوية، البيبسي كولا ، كل الاضافات المطلوبة",
    orderNum: 465465465465,
  ),
  OrdersModel(
    distance: "3.2",
    customerName: "قاسم الفهد",
    orderDate: "4/4/2024",
    orderDetails: "وجبة الفراخ المشوية، البيبسي كولا ، كل الاضافات المطلوبة",
    orderNum: 465465465465,
  ),
  OrdersModel(
    distance: "3.2",
    customerName: "قاسم الفهد",
    orderDate: "4/4/2024",
    orderDetails: "وجبة الفراخ المشوية، البيبسي كولا ، كل الاضافات المطلوبة",
    orderNum: 465465465465,
  ),
  OrdersModel(
    distance: "3.2",
    customerName: "قاسم الفهد",
    orderDate: "4/4/2024",
    orderDetails: "وجبة الفراخ المشوية، البيبسي كولا ، كل الاضافات المطلوبة",
    orderNum: 465465465465,
  ),
  OrdersModel(
    distance: "3.2",
    customerName: "قاسم الفهد",
    orderDate: "4/4/2024",
    orderDetails: "وجبة الفراخ المشوية، البيبسي كولا ، كل الاضافات المطلوبة",
    orderNum: 465465465465,
  ),
];
