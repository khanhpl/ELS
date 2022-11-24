// import 'package:els_sitter/core/utils/color_constant.dart';
// import 'package:flutter/material.dart';
//
// import '../../../core/models/sitter_detail_data_model.dart';
//
// class AdjustServiceDetailWidget extends StatefulWidget {
//   SitterDetailDataModel sitter;
//   AdjustServiceDetailWidget({super.key, required this.sitter});
//
//   @override
//   State<AdjustServiceDetailWidget> createState() => _AdjustServiceDetailWidgetState();
// }
//
// class _AdjustServiceDetailWidgetState extends State<AdjustServiceDetailWidget> {
//   SitterDetailDataModel sitter;
//   _AdjustServiceDetailWidgetState({required this.sitter});
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.purple900,
//         body: SizedBox(
//           width: size.width,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: size.height * 0.5,
//                   margin: EdgeInsets.all(size.width * 0.05),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.whiteA700,
//                     border: Border.all(
//                       color: ColorConstant.whiteA700,
//                       width: 5.0,
//                       style: BorderStyle.solid,
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         top: size.height * 0.01,
//                         bottom: size.height * 0.005,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Điều chỉnh giá dịch vụ",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: ColorConstant.black900,
//                               fontSize: 26,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                     top: size.height * 0.05,
//                                     right: size.width * 0.05,
//                                     left: size.width * 0.05),
//                                 child: Text(
//                                   sitter.sitterServicesResponseDtos.name,
//                                   textAlign: TextAlign.center,
//                                   overflow: TextOverflow.clip,
//                                   style: TextStyle(
//                                     color: ColorConstant.gray700,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                     right: size.width * 0.05,
//                                     left: size.width * 0.05),
//                                 child: Text(
//                                   "Giá: 200000 VNĐ",
//                                   textAlign: TextAlign.center,
//                                   overflow: TextOverflow.clip,
//                                   style: TextStyle(
//                                     color: ColorConstant.gray700,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                     right: size.width * 0.05,
//                                     left: size.width * 0.05),
//                                 child: Text(
//                                   "Kinh nghiệm làm việc: 2 năm",
//                                   textAlign: TextAlign.center,
//                                   overflow: TextOverflow.clip,
//                                   style: TextStyle(
//                                     color: ColorConstant.gray700,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: size.width * 0.05,
//                     right: size.width * 0.05,
//                   ),
//                   child: SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                             foregroundColor: MaterialStateProperty.all<Color>(
//                                 ColorConstant.purple900),
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                                 ColorConstant.BG),
//                             shape: MaterialStateProperty.all<
//                                     RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                     side:
//                                         BorderSide(color: ColorConstant.BG)))),
//                         onPressed: () => Navigator.pushNamed(context, ""),
//                         child: const Text(
//                             "GỬI",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ))),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
