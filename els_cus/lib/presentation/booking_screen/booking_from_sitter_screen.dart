// import 'package:els_cus_mobile/blocs/booking_sitter_bloc.dart';
// import 'package:els_cus_mobile/blocs/elder_blocs.dart';
// import 'package:els_cus_mobile/blocs/service_blocs.dart';
// import 'package:els_cus_mobile/core/models/elder_data_model.dart';
// import 'package:els_cus_mobile/core/models/service_data_model.dart';
// import 'package:els_cus_mobile/core/models/service_model.dart';
// import 'package:els_cus_mobile/core/models/sitter_data_model.dart';
// import 'package:els_cus_mobile/core/utils/color_constant.dart';
// import 'package:els_cus_mobile/core/utils/image_constant.dart';
// import 'package:els_cus_mobile/presentation/booking_screen/widget/elder_item_on_booking_widget.dart';
// import 'package:els_cus_mobile/presentation/booking_screen/widget/update_service_button.dart';
// import 'package:els_cus_mobile/widgets/service_item_booking_widget.dart';
// import 'package:flutter/material.dart';
//
// class BookingFromSitterScreen extends StatefulWidget {
//   SitterDataModel sitter;
//
//   BookingFromSitterScreen({super.key, required this.sitter});
//
//   @override
//   State<BookingFromSitterScreen> createState() =>
//       _BookingFromSitterScreenState(sitter: sitter);
// }
//
// class _BookingFromSitterScreenState extends State<BookingFromSitterScreen> {
//   SitterDataModel sitter;
//
//   _BookingFromSitterScreenState({required this.sitter});
//
//   final Future<ServiceModel> serviceList = ServiceBlocs().getAllService();
//   List<ServiceDataModel> listSelectedService = [];
//   bool isChooseService = false;
//   final Future<List<ElderDataModel>> elderList = ElderBlocs().getAllElder();
//   String chooseElderID = "";
//   BookingSitterBloc bloc = BookingSitterBloc();
//   bool checkChooseService(ServiceDataModel selectedService){
//
//       if(listSelectedService.isNotEmpty){
//         for(ServiceDataModel service in listSelectedService){
//           if(service.id == selectedService.id){
//             return true;
//           }
//         }
//       }
//       return false;
//   }
//   _chooseService(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     AlertDialog alert = AlertDialog(
//       contentPadding: const EdgeInsets.all(0),
//       backgroundColor: ColorConstant.gray300,
//       content: Container(
//         padding: EdgeInsets.all(size.width * 0.03),
//         width: size.width,
//         decoration: BoxDecoration(
//           color: ColorConstant.gray300,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: FutureBuilder<ServiceModel>(
//           builder: (context, snapshot) {
//             if (snapshot.hasError) print(snapshot.error);
//             if (snapshot.hasData) {
//               return ListView.separated(
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 itemCount: snapshot.data!.data.length,
//                 separatorBuilder: (context, index) {
//                   return SizedBox(height: size.height * 0.01);
//                 },
//                 itemBuilder: (BuildContext context, int index) {
//                   return Align(
//                     alignment: Alignment.centerLeft,
//                     child: Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: ColorConstant.whiteA700,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           ServiceItemBookingWidget(
//                               context, snapshot.data!.data[index]),
//                           Expanded(
//                             child: GestureDetector(
//                               onTap: (){
//                                 setState(() {
//                                   bool chkOccur = false;
//                                   if(listSelectedService.isNotEmpty){
//                                     for(ServiceDataModel service in listSelectedService){
//                                       if(service.id == snapshot.data!.data[index].id){
//                                         chkOccur = true;
//                                       }
//                                     }
//                                     if(chkOccur){
//                                       listSelectedService.remove(snapshot.data!.data[index]);
//                                     }else{
//                                       listSelectedService.add(snapshot.data!.data[index]);
//                                     }
//                                   }else{
//                                     listSelectedService.add(snapshot.data!.data[index]);
//                                   }
//                                   Navigator.pop(context);
//                                 });
//                               },
//                                 child: updateServiceButton(context, checkChooseService(snapshot.data!.data[index]))),
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return const CircularProgressIndicator();
//             }
//           },
//           future: serviceList,
//         ),
//       ),
//     );
//
//     // show the dialog
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//
//     // set up the AlertDialog
//   }
//   void showSuccessAlertDialog(BuildContext context) {
//     // set up the buttons
//
//     Widget continueButton = TextButton(
//       child: Text(
//         "X??c nh???n",
//         style: TextStyle(
//           color: ColorConstant.purple900,
//         ),
//       ),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//
//     // set up the AlertDialog
//     AlertDialog alert = AlertDialog(
//       content: const Text(
//         "?????t L???ch Th??nh c??ng",
//       ),
//       actions: [
//         continueButton,
//       ],
//     );
//
//     // show the dialog
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }
//   void showFailAlertDialog(BuildContext context) {
//     // set up the buttons
//
//     Widget continueButton = TextButton(
//       child: Text(
//         "X??c nh???n",
//         style: TextStyle(
//           color: ColorConstant.purple900,
//         ),
//       ),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//
//     // set up the AlertDialog
//     AlertDialog alert = AlertDialog(
//
//       content: const Text(
//         "?????t L???ch Th???t b???i",
//       ),
//       actions: [
//         continueButton,
//       ],
//     );
//
//     // show the dialog
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//
//     void showAlertDialog(BuildContext context) {
//       // set up the buttons
//       Widget cancelButton = TextButton(
//         child: Text(
//           "H???y",
//           style: TextStyle(
//             color: ColorConstant.purple900,
//           ),
//         ),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       );
//       Widget continueButton = TextButton(
//         child: Text(
//           "X??c nh???n",
//           style: TextStyle(
//             color: ColorConstant.purple900,
//           ),
//         ),
//         onPressed: () {
//           onBookingClick();
//         },
//       );
//
//       // set up the AlertDialog
//       AlertDialog alert = AlertDialog(
//         title: const Text(
//           "X??c Nh???n ?????t L???ch",
//         ),
//         content: const Text(
//           "B???n x??c nh???n mu???n ?????t l???ch ch??m s??c n??y",
//         ),
//         actions: [
//           cancelButton,
//           continueButton,
//         ],
//       );
//
//       // show the dialog
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return alert;
//         },
//       );
//     }
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: SizedBox(
//           width: size.width,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: ColorConstant.whiteA700,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                             padding: EdgeInsets.only(
//                               left: size.width * 0.03,
//                               top: size.height * 0.02,
//                               right: size.width * 0.03,
//                             ),
//                             child: Image.asset(
//                               ImageConstant.imgArrowleft,
//                               height: size.width * 0.03,
//                               width: size.width * 0.03,
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.center,
//                           child: Text(
//                             "Xem l???i l???ch ?????t",
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               color: ColorConstant.black900,
//                               fontSize: 34,
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w700,
//                               height: 1.00,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Text(
//                       "Th???i gian v?? Ng??y th??ng",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: ColorConstant.gray700,
//                         fontSize: 13,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w400,
//                         height: 1.00,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Th??? hai, 24 th??ng 10",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 color: ColorConstant.black900,
//                                 fontSize: 17,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.00,
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Padding(
//                                 padding: EdgeInsets.only(
//                                   top: size.height * 0.01,
//                                 ),
//                                 child: Text(
//                                   "8:00 SA - 12:00 CH",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: 13,
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.w500,
//                                     height: 1.00,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Expanded(
//                           child: Align(
//                               alignment: Alignment.centerRight,
//                               child: Image.asset(
//                                 ImageConstant.imgArrowrightGray400,
//                                 height: size.width * 0.03,
//                                 width: size.width * 0.03,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.width * 0.03,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.bluegray50,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Text(
//                       "Nh??n vi??n",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: ColorConstant.gray700,
//                         fontSize: 13,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w400,
//                         height: 1.00,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               sitter.fullname,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 color: ColorConstant.black900,
//                                 fontSize: 17,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.00,
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Padding(
//                                 padding: EdgeInsets.only(
//                                   top: size.height * 0.01,
//                                 ),
//                                 child: Text(
//                                   "Tr?? chuy???n c??ng",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: 13,
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.w500,
//                                     height: 1.00,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Expanded(
//                           child: Align(
//                               alignment: Alignment.centerRight,
//                               child: Image.asset(
//                                 ImageConstant.imgArrowrightGray400,
//                                 height: size.width * 0.03,
//                                 width: size.width * 0.03,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.width * 0.03,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.bluegray50,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Text(
//                       "D???ch v???",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: ColorConstant.gray700,
//                         fontSize: 13,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w400,
//                         height: 1.00,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.height * 0.015,
//                     right: size.width * 0.03,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _chooseService(context);
//                           });
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               ImageConstant.imgIconAdd,
//                               height: size.width * 0.03,
//                               width: size.width * 0.03,
//                             ),
//                             SizedBox(width: size.width * 0.015),
//                             Text(
//                               "Th??m d???ch v???",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 color: ColorConstant.gray700,
//                                 fontSize: 13,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.00,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                       Padding(
//                         padding: EdgeInsets.only(
//                           top: size.height * 0.015,
//                         ),
//                         child: ListView.separated(
//                           physics: const NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           scrollDirection: Axis.vertical,
//                           itemCount: listSelectedService.length,
//                           separatorBuilder: (context, index) {
//                             return SizedBox(height: size.height * 0.01);
//                           },
//                           itemBuilder: (BuildContext context, int index) {
//                             return Text('${listSelectedService[index].name}: ${listSelectedService[index].price.ceil().toString()} VN??');
//                           },
//                         ),
//                       ),
//                       //show elder
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.width * 0.03,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.bluegray50,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Text(
//                       "Th??n nh??n ???????c ch??m s??c",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: ColorConstant.gray700,
//                         fontSize: 13,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w400,
//                         height: 1.00,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.015,
//                       right: size.width * 0.03,
//                     ),
//                     child: SizedBox(
//                       height: size.height * 0.08,
//                       child: FutureBuilder<List<ElderDataModel>>(
//                         builder: (context, snapshot) {
//                           if (snapshot.hasError) print(snapshot.error);
//                           if (snapshot.hasData) {
//                             return ListView.separated(
//                               physics: const BouncingScrollPhysics(),
//                               shrinkWrap: true,
//                               scrollDirection: Axis.horizontal,
//                               // itemCount: snapshot.data!.length,
//                               itemCount: snapshot.data!.length,
//                               separatorBuilder: (context, index) {
//                                 return Container(
//                                   width: size.width * 0.03,
//                                 );
//                               },
//                               itemBuilder: (BuildContext context, int index) {
//                                 return GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         chooseElderID =
//                                             snapshot.data![index].id.toString();
//                                       });
//                                     },
//                                     child: ElderItemOnBookingWidget(context,
//                                         snapshot.data![index], chooseElderID));
//                               },
//                             );
//                           } else {
//                             return const CircularProgressIndicator();
//                           }
//                         },
//                         future: elderList,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.width * 0.03,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.bluegray50,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Text(
//                       "?????a ch??? th???c hi???n",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: ColorConstant.gray700,
//                         fontSize: 13,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w400,
//                         height: 1.00,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "G?? v???p, tp H??? Ch?? Minh",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 color: ColorConstant.black900,
//                                 fontSize: 17,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.00,
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Padding(
//                                 padding: EdgeInsets.only(
//                                   top: size.height * 0.01,
//                                 ),
//                                 child: Text(
//                                   "0.31 Km",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     color: ColorConstant.black900,
//                                     fontSize: 13,
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.w500,
//                                     height: 1.00,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Expanded(
//                           child: Align(
//                               alignment: Alignment.centerRight,
//                               child: Image.asset(
//                                 ImageConstant.imgArrowrightGray400,
//                                 height: size.width * 0.03,
//                                 width: size.width * 0.03,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.width * 0.03,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.bluegray50,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Ph????ng th???c thanh to??n",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 color: ColorConstant.gray700,
//                                 fontSize: 13,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.00,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 top: size.height * 0.015,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset(
//                                     ImageConstant.imgIconAdd,
//                                     height: size.width * 0.03,
//                                     width: size.width * 0.03,
//                                   ),
//                                   SizedBox(width: size.width * 0.015),
//                                   Text(
//                                     "Th??m ph????ng th???c thanh to??n",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       color: ColorConstant.gray700,
//                                       fontSize: 13,
//                                       fontFamily: 'Roboto',
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.00,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 top: size.height * 0.01,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Container(
//                                     height: size.height * 0.07,
//                                     width: size.width * 0.15,
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                         color: ColorConstant.black900,
//                                         width: 1,
//                                       ),
//                                     ),
//                                     child: Stack(
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.center,
//                                           child: Image.asset(
//                                               ImageConstant.imgMomo,
//                                               fit: BoxFit.fill),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: size.width * 0.03,
//                                     ),
//                                     child: Container(
//                                       height: size.height * 0.07,
//                                       width: size.width * 0.15,
//                                       decoration: BoxDecoration(
//                                         border: Border.all(
//                                           color: ColorConstant.black900,
//                                           width: 1,
//                                         ),
//                                       ),
//                                       child: Stack(
//                                         children: [
//                                           Align(
//                                             alignment: Alignment.center,
//                                             child: Image.asset(
//                                                 ImageConstant.imgZalopay,
//                                                 fit: BoxFit.fill),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(
//                     left: size.width * 0.03,
//                     top: size.width * 0.03,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.bluegray50,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Text(
//                       "Gi?? ti???n",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: ColorConstant.gray700,
//                         fontSize: 13,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w400,
//                         height: 1.00,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: size.width * 0.03,
//                       top: size.height * 0.02,
//                       right: size.width * 0.03,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Text(
//                           "T???ng c???ng",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             color: ColorConstant.black900,
//                             fontSize: 13,
//                             fontFamily: 'Roboto',
//                             fontWeight: FontWeight.w500,
//                             height: 1.00,
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                             calTotal().ceil().toString(),
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.right,
//                             style: TextStyle(
//                               color: ColorConstant.black900,
//                               fontSize: 13,
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w400,
//                               height: 1.00,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     width: double.infinity,
//                     margin: EdgeInsets.only(
//                         left: size.width * 0.03,
//                         right: size.width * 0.03,
//                         top: size.height * 0.02,
//                         bottom: size.height * 0.02),
//                     decoration: BoxDecoration(
//                       color: ColorConstant.whiteA700,
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         left: size.width * 0.05,
//                         right: size.width * 0.05,
//                       ),
//                       child: SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             showAlertDialog(context);
//                           },
//                           style: ElevatedButton.styleFrom(
//                             primary: ColorConstant.purple900,
//                             textStyle: TextStyle(
//                               fontSize: size.width * 0.045,
//                             ),
//                           ),
//                           child: const Text("X??c nh???n"),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   double calTotal() {
//     double totalPrice = 0;
//     if(listSelectedService.isNotEmpty){
//       for(ServiceDataModel service in listSelectedService){
//         totalPrice += service.price;
//       }
//     }
//     return totalPrice;
//   }
//
//   void onBookingClick() async{
//     bool chkBooking = false;
//
//     print('Test elderID: ${chooseElderID}');
//     print('Test total price: ${calTotal().toString()}');
//     print('Test list service ID: ${bloc.getListServiceID(listSelectedService)}');
//     print('Test sitter ID:' + sitter.id.toString());
//     chkBooking = await bloc.BookingSitter(int.parse(chooseElderID), calTotal(), listSelectedService, sitter);
//
//   }
// }
