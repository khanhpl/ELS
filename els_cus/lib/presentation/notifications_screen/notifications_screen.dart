// import 'package:els_cus_mobile/core/utils/color_constant.dart';
//
// import '../notifications_screen/widgets/listbarbaramichell_item_widget.dart';
// import 'package:flutter/material.dart';
//
// class NotificationsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    // return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: Container(
//           width: size.width,
//           child: SingleChildScrollView(
//             child: Container(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: ColorConstant.whiteA700,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Container(
//                           margin: getMargin(
//                             left: 16,
//                             top: 14,
//                             bottom: 8,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: getPadding(
//                                   right: 10,
//                                 ),
//                                 child: CommonImageView(
//                                   svgPath: ImageConstant.imgFilter,
//                                   height: getVerticalSize(
//                                     16.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     20.00,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: getPadding(
//                                   top: 23,
//                                 ),
//                                 child: Text(
//                                   "Thông báo",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: getFontSize(
//                                       34,
//                                     ),
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.w700,
//                                     height: 1.00,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: getPadding(
//                             top: 19,
//                             right: 16,
//                             bottom: 72,
//                           ),
//                           child: CommonImageView(
//                             svgPath: ImageConstant.imgIconmore,
//                             height: getVerticalSize(
//                               5.00,
//                             ),
//                             width: getHorizontalSize(
//                               20.00,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Padding(
//                       padding: getPadding(
//                         left: 16,
//                         top: 16,
//                         right: 16,
//                       ),
//                       child: ListView.separated(
//                         physics: BouncingScrollPhysics(),
//                         shrinkWrap: true,
//                         separatorBuilder: (context, index) {
//                           return Container(
//                             height: getVerticalSize(
//                               1.00,
//                             ),
//                             width: getHorizontalSize(
//                               359.00,
//                             ),
//                             decoration: BoxDecoration(
//                               color: ColorConstant.bluegray50,
//                             ),
//                           );
//                         },
//                         itemCount: 6,
//                         itemBuilder: (context, index) {
//                           return ListbarbaramichellItemWidget();
//                         },
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: getVerticalSize(
//                       1.00,
//                     ),
//                     width: getHorizontalSize(
//                       359.00,
//                     ),
//                     margin: getMargin(
//                       left: 10,
//                       top: 18,
//                     ),
//                     decoration: BoxDecoration(
//                       color: ColorConstant.bluegray50,
//                     ),
//                   ),
//                   Container(
//                     margin: getMargin(
//                       top: 19,
//                     ),
//                     decoration: BoxDecoration(
//                       color: ColorConstant.whiteA700,
//                       boxShadow: [
//                         BoxShadow(
//                           color: ColorConstant.bluegray50,
//                           spreadRadius: getHorizontalSize(
//                             2.00,
//                           ),
//                           blurRadius: getHorizontalSize(
//                             2.00,
//                           ),
//                           offset: Offset(
//                             0,
//                             -1,
//                           ),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Container(
//                           margin: getMargin(
//                             left: 19,
//                             top: 9,
//                             bottom: 35,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     left: 11,
//                                     right: 11,
//                                   ),
//                                   child: CommonImageView(
//                                     svgPath: ImageConstant.imgHome,
//                                     height: getVerticalSize(
//                                       24.00,
//                                     ),
//                                     width: getHorizontalSize(
//                                       20.00,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     top: 4,
//                                   ),
//                                   child: Text(
//                                     "Trang chủ",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       color: ColorConstant.bluegray400,
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       fontFamily: 'Roboto',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: getMargin(
//                             top: 8,
//                             bottom: 36,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: getPadding(
//                                   left: 9,
//                                   right: 8,
//                                 ),
//                                 child: CommonImageView(
//                                   svgPath: ImageConstant.imgTicket,
//                                   height: getVerticalSize(
//                                     24.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     23.00,
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     top: 4,
//                                   ),
//                                   child: Text(
//                                     "Lịch trình",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       color: ColorConstant.bluegray400,
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       fontFamily: 'Roboto',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: getVerticalSize(
//                             48.00,
//                           ),
//                           width: getHorizontalSize(
//                             75.00,
//                           ),
//                           margin: getMargin(
//                             top: 1,
//                             bottom: 34,
//                           ),
//                           child: Stack(
//                             alignment: Alignment.bottomCenter,
//                             children: [
//                               Align(
//                                 alignment: Alignment.topCenter,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     left: 25,
//                                     top: 8,
//                                     right: 25,
//                                     bottom: 10,
//                                   ),
//                                   child: CommonImageView(
//                                     svgPath: ImageConstant.imgLightbulb23X24,
//                                     height: getVerticalSize(
//                                       23.00,
//                                     ),
//                                     width: getHorizontalSize(
//                                       24.00,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.bottomCenter,
//                                 child: Container(
//                                   margin: getMargin(
//                                     left: 19,
//                                     top: 10,
//                                     right: 19,
//                                   ),
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       CustomButton(
//                                         width: 30,
//                                         text: "+",
//                                         margin: getMargin(
//                                           left: 3,
//                                           right: 3,
//                                         ),
//                                         alignment: Alignment.center,
//                                       ),
//                                       Padding(
//                                         padding: getPadding(
//                                           top: 2,
//                                         ),
//                                         child: Text(
//                                           "Tạo mới",
//                                           overflow: TextOverflow.ellipsis,
//                                           textAlign: TextAlign.left,
//                                           style: TextStyle(
//                                             color: ColorConstant.bluegray400,
//                                             fontSize: getFontSize(
//                                               10,
//                                             ),
//                                             fontFamily: 'Roboto',
//                                             fontWeight: FontWeight.w400,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: getMargin(
//                             top: 8,
//                             bottom: 35,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: getPadding(
//                                   left: 14,
//                                   right: 14,
//                                 ),
//                                 child: CommonImageView(
//                                   svgPath: ImageConstant.imgNotification24X20,
//                                   height: getVerticalSize(
//                                     24.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     20.00,
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     top: 4,
//                                   ),
//                                   child: Text(
//                                     "Thông báo",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       color: ColorConstant.purple900,
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       fontFamily: 'Roboto',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: getMargin(
//                             top: 8,
//                             right: 18,
//                             bottom: 36,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     left: 11,
//                                     right: 7,
//                                   ),
//                                   child: CommonImageView(
//                                     svgPath: ImageConstant.imgUser,
//                                     height: getSize(
//                                       24.00,
//                                     ),
//                                     width: getSize(
//                                       24.00,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     top: 4,
//                                   ),
//                                   child: Text(
//                                     "Tài khoản",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       color: ColorConstant.bluegray400,
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       fontFamily: 'Roboto',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
