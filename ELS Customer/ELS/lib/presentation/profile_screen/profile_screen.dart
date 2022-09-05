import 'controller/profile_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                      decoration: AppDecoration.fillGray50,
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
                                                      .imgArrowleft,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      12.00))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 8, bottom: 8),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIconmore,
                                                  height: getVerticalSize(5.00),
                                                  width:
                                                      getHorizontalSize(20.00)))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 59, top: 12, right: 59),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 32,
                                              width: 32,
                                              margin: getMargin(
                                                  top: 27, bottom: 27),
                                              variant: IconButtonVariant
                                                  .OutlineBluegray100,
                                              shape: IconButtonShape
                                                  .CircleBorder16,
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgGlobe)),
                                          Container(
                                              margin: getMargin(left: 24),
                                              padding: getPadding(
                                                  left: 15,
                                                  top: 30,
                                                  right: 15,
                                                  bottom: 30),
                                              decoration: AppDecoration
                                                  .txtFillGray400
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder43),
                                              child: Text("lbl_86_x_86".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoItalicThin18
                                                      .copyWith())),
                                          CustomIconButton(
                                              height: 32,
                                              width: 32,
                                              margin: getMargin(
                                                  left: 24,
                                                  top: 28,
                                                  bottom: 26),
                                              variant: IconButtonVariant
                                                  .OutlineBluegray100,
                                              shape: IconButtonShape
                                                  .CircleBorder16,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgFavorite))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 84, top: 22, right: 84),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("lbl_phan_th_t".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanBold28Black900
                                                  .copyWith(height: 1.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 24, top: 5, bottom: 11),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark,
                                                  height: getSize(12.00),
                                                  width: getSize(12.00)))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        getPadding(left: 59, top: 7, right: 53),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text("lbl_tr_chuy_n_c_ng".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular15
                                                  .copyWith(height: 1.00)),
                                          Container(
                                              height: getSize(3.00),
                                              width: getSize(3.00),
                                              margin: getMargin(
                                                  left: 9, top: 5, bottom: 6),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.bluegray400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1.50)))),
                                          Padding(
                                              padding: getPadding(left: 8),
                                              child: Text(
                                                  "msg_20_n_m_kinh_ngh".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15Gray700
                                                      .copyWith(height: 1.00)))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 59,
                                        top: 27,
                                        right: 59,
                                        bottom: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                    margin: getMargin(
                                                        top: 1, bottom: 3),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              15,
                                                                          right:
                                                                              15),
                                                                  child: Text(
                                                                      "lbl_92"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoItalicThin17Black900
                                                                          .copyWith(
                                                                              height: 1.00)))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_x_p_h_ng"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanRegular13Bluegray400
                                                                          .copyWith(
                                                                              height: 1.00))))
                                                        ])),
                                                Container(
                                                    margin: getMargin(left: 45),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_147".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoItalicThin17Black900
                                                                      .copyWith(
                                                                          height:
                                                                              1.00))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_nh_gi"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanRegular13Bluegray400
                                                                          .copyWith(
                                                                              height: 1.00))))
                                                        ]))
                                              ]),
                                          Container(
                                              margin: getMargin(
                                                  left: 62, top: 1, bottom: 3),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 3,
                                                                right: 2),
                                                            child: Text(
                                                                "lbl_35".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoItalicThin17Black900
                                                                    .copyWith(
                                                                        height:
                                                                            1.00)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "lbl_tu_i".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular13Bluegray400
                                                                .copyWith(
                                                                    height:
                                                                        1.00)))
                                                  ]))
                                        ])))
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          padding: getPadding(top: 16),
                          child: Container(
                              margin: getMargin(bottom: 20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 11, right: 11),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray5012
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 19,
                                                                        right:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_gi_theo_gi"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanRegular13Purple900
                                                                        .copyWith(
                                                                            height:
                                                                                1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 7,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_20000".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanMedium17.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  11,
                                                                              bottom:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_m_i_gi".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(height: 1.00)))
                                                                    ]))
                                                          ])),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBluegray5012
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 19,
                                                                        right:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_c_thu"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanRegular13Purple900
                                                                        .copyWith(
                                                                            height:
                                                                                1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 7,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_362".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanMedium17.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              bottom:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_l_n".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(height: 1.00)))
                                                                    ]))
                                                          ]))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 27, right: 16),
                                        child: Text("msg_d_ch_v_c_th".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 11, right: 16),
                                        child: Text("msg_c_x_c_min".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15Bluegray400
                                                .copyWith(height: 1.00))),
                                    Container(
                                        width: getHorizontalSize(258.00),
                                        margin: getMargin(
                                            left: 16, top: 21, right: 16),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "msg_l_n_k_ho_ch_v".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "lbl3".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "msg_s_p_x_p_h_tr".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "lbl2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "msg_t_p_luy_n_nh_n".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "lbl3".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "lbl_chu_n_b_b_a_n".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "lbl2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33)),
                                              TextSpan(
                                                  text: "msg_nh_c_nh_u_ng_t".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.33))
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Padding(
                                        padding: getPadding(
                                            left: 105, top: 19, right: 105),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgPlus,
                                                      height: getVerticalSize(
                                                          13.00),
                                                      width: getHorizontalSize(
                                                          14.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, top: 1),
                                                  child: Text(
                                                      "msg_xem_th_m_12_d_c".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoItalicThin14
                                                          .copyWith(
                                                              height: 1.00)))
                                            ])),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(top: 21),
                                        child: Container(
                                            height: getVerticalSize(239.00),
                                            width: getHorizontalSize(375.00),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  414.00),
                                                          margin: getMargin(
                                                              top: 10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 15,
                                                                        right:
                                                                            16),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_l_ch_tr_nh".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanBold17.copyWith(height: 1.00)),
                                                                          Padding(
                                                                              padding: getPadding(left: 231, top: 1, bottom: 5),
                                                                              child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                Text("lbl_t_t_c".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoItalicThin12.copyWith(height: 1.00)),
                                                                                Padding(padding: getPadding(left: 3, top: 3, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgArrowright, height: getVerticalSize(8.00), width: getHorizontalSize(4.00)))
                                                                              ]))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 11,
                                                                        right:
                                                                            16),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                              decoration: AppDecoration.fillPurple900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(left: 31, top: 7, right: 31), child: Text("lbl_07_30_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold13.copyWith(height: 1.00))),
                                                                                Padding(padding: getPadding(left: 31, top: 3, right: 31, bottom: 11), child: Text("lbl_ang_r_nh".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular13WhiteA700.copyWith(height: 1.00)))
                                                                              ])),
                                                                          Container(
                                                                              margin: getMargin(left: 16),
                                                                              decoration: AppDecoration.fillPurple900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(left: 31, top: 7, right: 31), child: Text("lbl_08_00_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold13.copyWith(height: 1.00))),
                                                                                Padding(padding: getPadding(left: 31, top: 3, right: 31, bottom: 11), child: Text("lbl_ang_r_nh".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular13WhiteA700.copyWith(height: 1.00)))
                                                                              ])),
                                                                          Container(
                                                                              margin: getMargin(left: 16),
                                                                              decoration: AppDecoration.fillBluegray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(left: 26, top: 7, right: 26), child: Text("lbl_08_30_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRomanBold13Gray400.copyWith(height: 1.00))),
                                                                                Padding(padding: getPadding(left: 26, top: 6, right: 26, bottom: 7), child: Text("lbl_d_t_tr_c".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRomanRegular13.copyWith(height: 1.00)))
                                                                              ]))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 16,
                                                              right: 16,
                                                              bottom: 10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_m_t"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanBold17
                                                                            .copyWith(height: 1.00))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        343.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            14),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "msg_xin_ch_o_t_i_l2".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(15), fontFamily: 'Roboto', fontWeight: FontWeight.w400, height: 1.33)),
                                                                          TextSpan(
                                                                              text: "lbl4".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(15), fontFamily: 'Roboto', fontWeight: FontWeight.w400, height: 1.33)),
                                                                          TextSpan(
                                                                              text: ' ',
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(15), fontFamily: 'Roboto', fontWeight: FontWeight.w400, height: 1.33)),
                                                                          TextSpan(
                                                                              text: "lbl_c_th_m".tr,
                                                                              style: TextStyle(color: ColorConstant.purple900, fontSize: getFontSize(15), fontFamily: 'Roboto', fontWeight: FontWeight.w400, height: 1.33))
                                                                        ]),
                                                                        textAlign: TextAlign.left))
                                                              ])))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 30, right: 16),
                                        child: Text("lbl_a_ch".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold17
                                                .copyWith(height: 1.00))),
                                    Container(
                                        width: getHorizontalSize(284.00),
                                        margin: getMargin(
                                            left: 16, top: 24, right: 16),
                                        child: Text("msg_43_quang_trung".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15
                                                .copyWith(height: 1.33))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(224.00),
                                            width: getHorizontalSize(343.00),
                                            margin: getMargin(
                                                left: 11, top: 16, right: 11),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              all: 40),
                                                          child: Text(
                                                              "lbl_343_x_224"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoItalicThin36
                                                                  .copyWith()))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .gradientWhiteA700WhiteA70000
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 8,
                                                                        right:
                                                                            16),
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
                                                                          Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                Container(
                                                                                    margin: getMargin(bottom: 1),
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      Text("lbl_kho_ng_c_ch".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(height: 1.00)),
                                                                                      Container(
                                                                                          margin: getMargin(top: 6, right: 10),
                                                                                          child: RichText(
                                                                                              text: TextSpan(children: [
                                                                                                TextSpan(text: "lbl_10_23".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(13), fontFamily: 'Roboto', fontWeight: FontWeight.w500, height: 1.00)),
                                                                                                TextSpan(text: "lbl_km".tr, style: TextStyle(color: ColorConstant.gray700, fontSize: getFontSize(13), fontFamily: 'Roboto', fontWeight: FontWeight.w400, height: 1.00))
                                                                                              ]),
                                                                                              textAlign: TextAlign.left))
                                                                                    ])),
                                                                                Container(
                                                                                    margin: getMargin(left: 22, top: 3),
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      Text("lbl_th_i_gian2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(height: 1.00)),
                                                                                      Padding(padding: getPadding(left: 1, top: 3, right: 10), child: Text("lbl_24_ph_t".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanMedium13.copyWith(height: 1.00)))
                                                                                    ]))
                                                                              ])),
                                                                          CustomIconButton(
                                                                              height: 35,
                                                                              width: 35,
                                                                              variant: IconButtonVariant.OutlinePurple900,
                                                                              shape: IconButtonShape.CircleBorder16,
                                                                              child: CommonImageView(svgPath: ImageConstant.imgReply))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 25,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            63),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgRoute,
                                                                        height: getVerticalSize(
                                                                            91.00),
                                                                        width: getHorizontalSize(
                                                                            208.00)))
                                                              ])))
                                                ]))),
                                    Container(
                                        margin: getMargin(
                                            left: 11, top: 43, right: 11),
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
                                                      "msg_t_i_kho_n_m_ng".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold17
                                                          .copyWith(
                                                              height: 1.00))),
                                              Padding(
                                                  padding: getPadding(top: 11),
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
                                                        CustomIconButton(
                                                            height: 40,
                                                            width: 40,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillGray50,
                                                            onTap: () {
                                                              onTapBtntf();
                                                            },
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFacebook)),
                                                        CustomIconButton(
                                                            height: 40,
                                                            width: 40,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillGray50,
                                                            onTap: () {
                                                              onTapBtntf1();
                                                            },
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCamera)),
                                                        CustomIconButton(
                                                            height: 40,
                                                            width: 40,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillGray50,
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIconyoutube)),
                                                        CustomIconButton(
                                                            height: 40,
                                                            width: 40,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillGray50,
                                                            onTap: () {
                                                              onTapBtntf2();
                                                            },
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgTwitter))
                                                      ]))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: double.infinity,
                                            margin:
                                                getMargin(left: 1, top: 401),
                                            decoration: AppDecoration
                                                .outlineBluegray5012,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomButton(
                                                      width: 343,
                                                      text:
                                                          "lbl_t_l_ch_ngay".tr,
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 16,
                                                          right: 15,
                                                          bottom: 16))
                                                ])))
                                  ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtntf() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapBtntf1() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapBtntf2() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }
}
