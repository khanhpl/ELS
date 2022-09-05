import 'controller/review_booking_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ReviewBookingScreen extends GetWidget<ReviewBookingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 9,
                                                    top: 11,
                                                    right: 10),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleftBlack900,
                                                    height:
                                                        getVerticalSize(21.00),
                                                    width: getHorizontalSize(
                                                        12.00))))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 20,
                                                right: 16,
                                                bottom: 9),
                                            child: Text("msg_xem_l_i_l_ch".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanBold34
                                                    .copyWith(height: 1.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 11, right: 16),
                              child: Text("msg_th_i_gian_v_ng".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular13Gray700
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 10, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("msg_th_hai_24_th".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium17
                                            .copyWith(height: 1.00)),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 3),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 6, right: 16),
                              child: Text("msg_8_00_sa_12_00".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanMedium13
                                      .copyWith(height: 1.00)))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(359.00),
                          margin: getMargin(left: 10, top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 17, right: 10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          Padding(
                                              padding: getPadding(right: 10),
                                              child: Text("lbl_nh_n_vi_n".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular13Gray700
                                                      .copyWith(height: 1.00))),
                                          Container(
                                              width: getHorizontalSize(327.00),
                                              margin: getMargin(top: 6),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 2, bottom: 5),
                                                        child: Text(
                                                            "lbl_tr_n_v_n_x".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanMedium17
                                                                .copyWith(
                                                                    height:
                                                                        1.00))),
                                                    Container(
                                                        padding: getPadding(
                                                            left: 4,
                                                            top: 9,
                                                            right: 4,
                                                            bottom: 9),
                                                        decoration: AppDecoration
                                                            .txtFillGray400
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder12),
                                                        child: Text(
                                                            "lbl_25_x_25".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoItalicThin6
                                                                .copyWith()))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(top: 5, right: 10),
                                              child: Text(
                                                  "lbl_tr_chuy_n_c_ng".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium13
                                                      .copyWith(height: 1.00)))
                                        ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 25, bottom: 24),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(359.00),
                          margin: getMargin(left: 10, top: 17),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 16, right: 16),
                              child: Text("lbl_a_ch".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular13Gray700
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 12, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("msg_g_v_p_th_nh_p".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium17
                                            .copyWith(height: 1.00)),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 2),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 7, right: 16),
                              child: Text("lbl_0_31_km".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanMedium13
                                      .copyWith(height: 1.00)))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(359.00),
                          margin: getMargin(left: 10, top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 19, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          Text("msg_ph_ng_th_c_tha".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular13Gray700
                                                  .copyWith(height: 1.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 3, top: 13, right: 10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            40.00),
                                                        width:
                                                            getHorizontalSize(
                                                                67.00),
                                                        decoration: AppDecoration
                                                            .outlineBlack900,
                                                        child: Stack(children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              14,
                                                                          right:
                                                                              8,
                                                                          bottom:
                                                                              15),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgShape,
                                                                      height: getVerticalSize(
                                                                          9.00),
                                                                      width: getHorizontalSize(
                                                                          51.00))))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 17,
                                                            top: 13,
                                                            bottom: 13),
                                                        child: Text(
                                                            "lbl_visa".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanMedium13
                                                                .copyWith(
                                                                    height:
                                                                        1.00)))
                                                  ]))
                                        ])),
                                    Padding(
                                        padding:
                                            getPadding(top: 23, bottom: 30),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(359.00),
                          margin: getMargin(left: 10, top: 12),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 16, right: 16),
                              child: Text("lbl_gi_ti_n".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular13Gray700
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 13, right: 16),
                              child: Text("lbl_40000_gi".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanMedium17
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 5, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_40000_x_4_gi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium13
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_160000".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular13Black900
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 17, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_t_ng_c_ng".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium13
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_160000".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular13Black900
                                                .copyWith(height: 1.00)))
                                  ]))),
                      CustomButton(
                          width: 343,
                          text: "lbl_x_c_nh_n".tr,
                          margin: getMargin(
                              left: 10, top: 71, right: 10, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
