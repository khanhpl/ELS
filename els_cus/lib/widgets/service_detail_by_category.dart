// import 'package:els_cus_mobile/core/models/category_data_model.dart';
// import 'package:els_cus_mobile/core/models/service_data_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// import '../core/utils/color_constant.dart';
// import '../core/utils/image_constant.dart';
//
// class ServiceDetailByCate extends StatefulWidget {
//   ServiceDataModel service;
//   ServiceDetailByCate({super.key, required this.service});
//
//   @override
//   State<ServiceDetailByCate> createState() =>
//       _ServiceDetailByCateState(service: this.service);
// }
//
// class _ServiceDetailByCateState extends State<ServiceDetailByCate> {
//   ServiceDataModel service;
//   _ServiceDetailByCateState({required this.service});
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         appBar: AppBar(
//           toolbarHeight: size.height * 0.08,
//           // bottomOpacity: 0.0,
//           elevation: 0.0,
//           automaticallyImplyLeading: false,
//           backgroundColor: ColorConstant.purple900,
//           leading: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Image.asset(
//               ImageConstant.imgArrowleft,
//               height: size.height * 0.024,
//               width: size.width * 0.03,
//               color: ColorConstant.whiteA700,
//             ),
//           ),
//           title: Container(
//             decoration: BoxDecoration(
//               color: ColorConstant.purple900,
//             ),
//             child: Container(
//               margin: EdgeInsets.only(
//                 top: size.height * 0.01,
//                 bottom: size.height * 0.01,
//               ),
//               child: Text(
//                 "Chi tiết dịch vụ",
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: ColorConstant.whiteA700,
//                   fontSize: 24,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w700,
//                   height: 1.00,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
