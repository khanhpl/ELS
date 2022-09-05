import 'controller/filter_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:els/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Container(
                      width: double.infinity,
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: size.width,
                                    margin:
                                        getMargin(left: 9, top: 11, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftBlack900,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      12.00))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 3, bottom: 1),
                                              child: Text("lbl_t_l_i".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular17Gray700
                                                      .copyWith()))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 21,
                                        right: 16,
                                        bottom: 8),
                                    child: Text("lbl_b_l_c".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanBold34
                                            .copyWith(height: 1.00))))
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          padding: getPadding(top: 11),
                          child: Container(
                              margin: getMargin(bottom: 20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(left: 16, right: 16),
                                        child: Text("lbl_s_n_s_ng".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 22, right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4, bottom: 9),
                                                      child: Text(
                                                          "msg_s_n_s_ng_trong"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Obx(() => CustomSwitch(
                                                      value: controller
                                                          .isSelectedSwitch
                                                          .value,
                                                      onChanged: (value) {
                                                        controller
                                                            .isSelectedSwitch
                                                            .value = value;
                                                      }))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 6),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 30, right: 16),
                                        child: Text("msg_tu_ch_n_s_p_x".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 22, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 4),
                                                      child: Text(
                                                          "lbl_ph_bi_n".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin: getMargin(top: 1),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 11, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 4),
                                                      child: Text(
                                                          "msg_i_m_x_p_h_ng".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  CustomIconButton(
                                                      height: 20,
                                                      width: 20,
                                                      margin: getMargin(top: 1),
                                                      variant: IconButtonVariant
                                                          .FillGreen400,
                                                      shape: IconButtonShape
                                                          .CircleBorder10,
                                                      padding: IconButtonPadding
                                                          .PaddingAll5,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmark20X20))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 11, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 4),
                                                      child: Text(
                                                          "msg_i_m_x_p_h_ng2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin: getMargin(top: 1),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 1),
                                                      child: Text(
                                                          "msg_nh_gi_cao_nh".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 1),
                                                      child: Text(
                                                          "msg_nhi_u_nh_gi".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 1),
                                                      child: Text(
                                                          "msg_gi_c_th_p_nh".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 1),
                                                      child: Text(
                                                          "msg_gi_c_cao_nh".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 29, right: 16),
                                        child: Text("lbl_gi_i_t_nh".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 25, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 1, bottom: 1),
                                                      child: Text("lbl_nam".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .bluegray100,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00))))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 1, bottom: 1),
                                                      child: Text("lbl_n".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  CustomIconButton(
                                                      height: 20,
                                                      width: 20,
                                                      variant: IconButtonVariant
                                                          .FillGreen400,
                                                      shape: IconButtonShape
                                                          .CircleBorder10,
                                                      padding: IconButtonPadding
                                                          .PaddingAll5,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmark20X20))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 10, top: 30, right: 10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "msg_kinh_nghi_m_l_m"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold17
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 19),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            CustomButton(
                                                                width: 167,
                                                                text:
                                                                    "msg_kh_ng_y_u_c_u"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray100,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll10,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15),
                                                            CustomButton(
                                                                width: 167,
                                                                text:
                                                                    "lbl_1".tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlinePurple900,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15Purple900)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            CustomButton(
                                                                width: 167,
                                                                text: "lbl_1_5"
                                                                    .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray100,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15),
                                                            CustomButton(
                                                                width: 167,
                                                                text: "lbl_5_10"
                                                                    .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray100,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            CustomButton(
                                                                width: 167,
                                                                text:
                                                                    "lbl_10_15"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray100,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15),
                                                            CustomButton(
                                                                width: 167,
                                                                text:
                                                                    "lbl_15_20"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray100,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15)
                                                          ]))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 30, right: 16),
                                        child: Text("lbl_khung_gi_c".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 19, right: 16),
                                        child: Text("msg_t_15000_n_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 16, right: 16),
                                        child: Text("msg_gi_trung_b_nh".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15Bluegray400
                                                .copyWith(height: 1.00))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(76.00),
                                            width: getHorizontalSize(343.00),
                                            margin: getMargin(
                                                left: 10, top: 17, right: 10),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 49,
                                                              right: 49,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGraphic,
                                                              height:
                                                                  getVerticalSize(
                                                                      60.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      135.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: SliderTheme(
                                                          data: SliderThemeData(
                                                              trackShape:
                                                                  RoundedRectSliderTrackShape(),
                                                              activeTrackColor:
                                                                  ColorConstant
                                                                      .purple900,
                                                              inactiveTrackColor:
                                                                  ColorConstant
                                                                      .bluegray50,
                                                              thumbColor:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              thumbShape:
                                                                  RoundSliderThumbShape()),
                                                          child: RangeSlider(
                                                              values:
                                                                  RangeValues(
                                                                      0, 0),
                                                              min: 0.0,
                                                              max: 100.0,
                                                              onChanged:
                                                                  (value) {})))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 27, right: 16),
                                        child: Text("lbl_i_m_x_p_h_ng".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 10, top: 11, right: 10),
                                            decoration: AppDecoration
                                                .outlineGray400
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .fillPurple900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL100),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 7,
                                                                        bottom:
                                                                            8),
                                                                child: Text(
                                                                    "lbl_12".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoItalicThin13
                                                                        .copyWith(
                                                                            height:
                                                                                1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 3,
                                                                        top: 10,
                                                                        right:
                                                                            24,
                                                                        bottom:
                                                                            9),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar,
                                                                    height:
                                                                        getSize(
                                                                            10.00),
                                                                    width: getSize(
                                                                        10.00)))
                                                          ])),
                                                  Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 23,
                                                          top: 6,
                                                          bottom: 9),
                                                      child: Text("lbl_2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoItalicThin13Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar10X10,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      margin:
                                                          getMargin(left: 23),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 23,
                                                          top: 6,
                                                          bottom: 9),
                                                      child: Text("lbl_3".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoItalicThin13Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar10X10,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      margin:
                                                          getMargin(left: 22),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 23,
                                                          top: 6,
                                                          bottom: 9),
                                                      child: Text("lbl_4".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoItalicThin13Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar10X10,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      margin:
                                                          getMargin(left: 22),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 24,
                                                          top: 6,
                                                          bottom: 9),
                                                      child: Text("lbl_5".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoItalicThin13Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar10X10,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00)))
                                                ]))),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(top: 16),
                                        decoration:
                                            AppDecoration.outlineBluegray5012,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                  width: 343,
                                                  text: "lbl_p_d_ng_b_l_c".tr,
                                                  margin: getMargin(all: 16))
                                            ]))
                                  ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
