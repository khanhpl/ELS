// import 'package:els/core/app_export.dart';
// import 'package:flutter/material.dart';
//
// // ignore: must_be_immutable
// class ListbarbaramichellItemWidget extends StatelessWidget {
//   ListbarbaramichellItemWidget();
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Padding(
//         padding: getPadding(
//           top: 17.5,
//           bottom: 17.5,
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Container(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Align(
//                     alignment: Alignment.center,
//                     child: Container(
//                       child: RichText(
//                         text: TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'Lê Thị G',
//                               style: TextStyle(
//                                 color: ColorConstant.black900,
//                                 fontSize: getFontSize(
//                                   15,
//                                 ),
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w100,
//                                 height: 1.00,
//                               ),
//                             ),
//                             TextSpan(
//                               text: ' ',
//                               style: TextStyle(
//                                 color: ColorConstant.black900,
//                                 fontSize: getFontSize(
//                                   15,
//                                 ),
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.00,
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'đã xác nhận yêu cầu của bạn',
//                               style: TextStyle(
//                                 color: ColorConstant.black900,
//                                 fontSize: getFontSize(
//                                   15,
//                                 ),
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.00,
//                               ),
//                             ),
//                           ],
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: getPadding(
//                       top: 25,
//                       right: 10,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Padding(
//                           padding: getPadding(
//                             top: 1,
//                           ),
//                           child: CommonImageView(
//                             svgPath: ImageConstant.imgClock,
//                             height: getSize(
//                               14.00,
//                             ),
//                             width: getSize(
//                               14.00,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: getPadding(
//                             left: 8,
//                             bottom: 1,
//                           ),
//                           child: Text(
//                             "10:00 CH",
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               color: ColorConstant.bluegray400,
//                               fontSize: getFontSize(
//                                 13,
//                               ),
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w400,
//                               height: 1.00,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: getMargin(
//                 left: 51,
//                 top: 9,
//                 bottom: 6,
//               ),
//               padding: getPadding(
//                 left: 8,
//                 top: 17,
//                 right: 8,
//                 bottom: 17,
//               ),
//               decoration: BoxDecoration(
//                 color: ColorConstant.gray400,
//                 borderRadius: BorderRadius.circular(
//                   getHorizontalSize(
//                     22.50,
//                   ),
//                 ),
//               ),
//               child: Text(
//                 "45 x 45",
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: ColorConstant.bluegray400,
//                   fontSize: getFontSize(
//                     10,
//                   ),
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w100,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
