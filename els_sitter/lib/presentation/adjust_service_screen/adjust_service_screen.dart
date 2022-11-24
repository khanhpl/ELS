import 'package:els_sitter/core/models/sitter_service_data_model.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:els_sitter/presentation/adjust_service_screen/widget/adjust_service_detail_widget.dart';
import 'package:flutter/material.dart';

import '../../core/models/service_data_model.dart';
import '../../core/models/sitter_detail_data_model.dart';
import '../../core/models/sitter_service_request_model.dart';

class AdjustServiceScreen extends StatefulWidget {
  SitterDetailDataModel sitter;

  AdjustServiceScreen({super.key, required this.sitter});

  @override
  State<AdjustServiceScreen> createState() =>
      _AdjustServiceScreenState(sitter: this.sitter);
}

class _AdjustServiceScreenState extends State<AdjustServiceScreen> {
  SitterDetailDataModel sitter;

  _AdjustServiceScreenState({required this.sitter});

  // _updateService(BuildContext context, SitterServiceDataModel sitterService) {
  //   var size = MediaQuery.of(context).size;
  //   AlertDialog alert = AlertDialog(
  //       contentPadding: const EdgeInsets.all(0),
  //       backgroundColor: Colors.transparent,
  //       content: StatefulBuilder(builder: (context, setState) {
  //         final TextEditingController _hobPriceController = TextEditingController();
  //         final TextEditingController _workExpController = TextEditingController();
  //         _hobPriceController.text = sitterService.servicePrice.toString();
  //         _workExpController.text = sitterService.exp.toString();
  //         return Container(
  //           padding: EdgeInsets.all(size.width * 0.03),
  //           width: size.width,
  //           decoration: BoxDecoration(
  //             color: ColorConstant.whiteA700,
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: SingleChildScrollView(
  //             scrollDirection: Axis.vertical,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: EdgeInsets.only(top: size.height * 0.01),
  //                   child: Text(
  //                     "Tên dịch vụ",
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.left,
  //                     style: TextStyle(
  //                       color: ColorConstant.bluegray900,
  //                       fontSize: size.width * 0.04,
  //                       fontWeight: FontWeight.w500,
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(
  //                     top: size.height * 0.01,
  //                     left: size.width * 0.03,
  //                   ),
  //                   child: Text(
  //                     sitterService.serviceName,
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.left,
  //                     style: TextStyle(
  //                       color: ColorConstant.bluegray900,
  //                       fontSize: 12,
  //                       fontWeight: FontWeight.w400,
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(
  //                     top: size.height * 0.02,
  //                   ),
  //                   child: Text(
  //                     "Giá dịch vụ(Đề xuất):",
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.left,
  //                     style: TextStyle(
  //                       color: ColorConstant.bluegray900,
  //                       fontSize: size.width * 0.04,
  //                       fontWeight: FontWeight.w500,
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(
  //                     top: size.height * 0.01,
  //                     left: size.width * 0.03,
  //                   ),
  //                   child: Text(
  //                     '${sitterService.servicePrice} VNĐ/ ${sitterService.duration} phút',
  //                     overflow: TextOverflow.ellipsis,
  //                     textAlign: TextAlign.left,
  //                     style: TextStyle(
  //                       color: ColorConstant.bluegray900,
  //                       fontSize: 12,
  //                       fontWeight: FontWeight.w400,
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(
  //                     top: size.height * 0.01,
  //                   ),
  //                   child: Stack(
  //                     alignment: AlignmentDirectional.centerEnd,
  //                     children: [
  //                       StreamBuilder(
  //                         stream: null,
  //                         builder: (context, snapshot) => TextField(
  //                           style: TextStyle(
  //                               fontSize: size.width * 0.04,
  //                               color: Colors.black),
  //                           controller: _hobPriceController,
  //                           cursorColor: ColorConstant.purple900,
  //                           keyboardType: TextInputType.number,
  //                           decoration: InputDecoration(
  //                             hintText: "Giá dịch vụ mong muốn(VNĐ)",
  //                             hintStyle: TextStyle(
  //                               fontSize: size.width * 0.04,
  //                             ),
  //                             errorText: snapshot.hasError
  //                                 ? snapshot.error.toString()
  //                                 : null,
  //                             focusedBorder: UnderlineInputBorder(
  //                               borderSide: BorderSide(
  //                                   width: 1, color: ColorConstant.purple900),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(right: size.height * 0.02),
  //                         child: Text(
  //                           "VNĐ",
  //                           style: TextStyle(
  //                             color: ColorConstant.black900,
  //                             fontSize: size.width * 0.04,
  //                             fontWeight: FontWeight.w400,
  //                           ),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(
  //                           top: size.height * 0.01,
  //                         ),
  //                         child: Stack(
  //                           alignment: AlignmentDirectional.centerEnd,
  //                           children: [
  //                             StreamBuilder(
  //                               stream: null,
  //                               builder: (context, snapshot) => TextField(
  //                                 style: TextStyle(
  //                                     fontSize: size.width * 0.04,
  //                                     color: Colors.black),
  //                                 controller: _workExpController,
  //                                 cursorColor: ColorConstant.purple900,
  //                                 keyboardType: TextInputType.number,
  //                                 decoration: InputDecoration(
  //                                   hintText: "Kinh nghiệm làm việc(Năm)",
  //                                   hintStyle: TextStyle(
  //                                     fontSize: size.width * 0.04,
  //                                   ),
  //                                   errorText: snapshot.hasError
  //                                       ? snapshot.error.toString()
  //                                       : null,
  //                                   focusedBorder: UnderlineInputBorder(
  //                                     borderSide: BorderSide(
  //                                         width: 1, color: ColorConstant.purple900),
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //                             Padding(
  //                               padding: EdgeInsets.only(right: size.height * 0.02),
  //                               child: Text(
  //                                 "Năm",
  //                                 style: TextStyle(
  //                                   color: ColorConstant.black900,
  //                                   fontSize: size.width * 0.04,
  //                                   fontWeight: FontWeight.w400,
  //                                 ),
  //                               ),
  //                             ),
  //                             SizedBox(height: size.height * 0.02),
  //                             Padding(
  //                               padding: EdgeInsets.only(
  //                                 top: size.height * 0.05,
  //                               ),
  //                               child: SizedBox(
  //                                 width: double.infinity,
  //                                 child: ElevatedButton(
  //                                   onPressed: () {
  //                                     // listSitterService[listSitterService.indexWhere(
  //                                     //         (element) =>
  //                                     //     element.id == sitterService.id)] =
  //                                     //     SitterServiceRequestModel(
  //                                     //         servicePrice:
  //                                     //         int.parse(_hobPriceController.text),
  //                                     //         exp: int.parse(_workExpController.text),
  //                                     //         id: service.id);
  //                                     //
  //                                     // // if (listSitterService.isNotEmpty) {
  //                                     // //   for (ServiceDataModel service
  //                                     // //       in listSelectedService) {
  //                                     // //     bool addedService = false;
  //                                     // //     for (SitterServiceRequestModel sitterService
  //                                     // //         in listSitterService) {
  //                                     // //       if (service.id == sitterService.id) {
  //                                     // //         addedService = true;
  //                                     // //       }
  //                                     // //     }
  //                                     // //     if (!addedService) {
  //                                     // //       listSelectedService.remove(service);
  //                                     // //     }
  //                                     // //   }
  //                                     // // } else {
  //                                     // //   listSelectedService.clear();
  //                                     // // }
  //                                     // Navigator.pop(context);
  //                                   },
  //                                   style: ElevatedButton.styleFrom(
  //                                     primary: ColorConstant.purple900,
  //                                     textStyle: TextStyle(
  //                                       fontSize: size.width * 0.045,
  //                                     ),
  //                                   ),
  //                                   child: const Text("Xác nhận"),
  //                                 ),
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       }));
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height * 0.08,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorConstant.purple900,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/accountScreen');
            },
            child: Image.asset(
              ImageConstant.imgArrowleft,
              height: size.height * 0.024,
              width: size.width * 0.03,
              color: ColorConstant.whiteA700,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(
              top: size.height * 0.01,
              bottom: size.height * 0.01,
            ),
            child: Text(
              "Điều chỉnh dịch vụ",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: ColorConstant.whiteA700,
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 1.00),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/addNewElderScreen');
          },
          elevation: 0.0,
          backgroundColor: ColorConstant.purple900,
          child: const Icon(Icons.add),
        ),
        body: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Align(
              child: Container(
                width: size.width,
                margin: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                            top: size.height * 0.03, left: size.width * 0.005),
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: sitter.sitterServicesResponseDtos.length,
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: size.height * 0.02,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: AdjustServiceDetailWidget()));
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      right: size.width * 0.03,
                                      left: size.width * 0.03,
                                      top: size.height * 0.02,
                                      bottom: size.height * 0.02),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffEEE2FF)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.height * 0.01,
                                            bottom: size.height * 0.01,
                                            left: size.width * 0.03),
                                        child: SizedBox(
                                          width: size.width * 0.8,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  '${sitter.sitterServicesResponseDtos[index].name}',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 20,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Giá tiền: ${sitter.sitterServicesResponseDtos[index].price.ceil()} VNĐ/ phút\n'
                                                  'Kinh nghiệm làm việc: ${sitter.sitterServicesResponseDtos[index].exp} năm',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: 16,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.50),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Image.asset(
                                            ImageConstant.imgArrowrightGray400,
                                            color: ColorConstant.black900,
                                            width: size.width * 0.02,
                                            height: size.width * 0.03,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
