import 'controller/history_detail_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HistoryDetailScreen extends GetWidget<HistoryDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 26),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(106.00),
                                      width: getHorizontalSize(375.00),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 11,
                                                        right: 16,
                                                        bottom: 11),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgNavbars,
                                                        height: getVerticalSize(
                                                            20.00),
                                                        width:
                                                            getHorizontalSize(
                                                                343.00)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: ColorConstant
                                                                  .bluegray50,
                                                              spreadRadius:
                                                                  getHorizontalSize(
                                                                      2.00),
                                                              blurRadius:
                                                                  getHorizontalSize(
                                                                      2.00),
                                                              offset:
                                                                  Offset(0, 1))
                                                        ]),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapImgArrowleft();
                                                                        },
                                                                        child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowleftBlack900, height: getVerticalSize(17.00), width: getHorizontalSize(12.00))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                6,
                                                                            top:
                                                                                17),
                                                                        child: Text(
                                                                            "msg_th_ng_tin_chi_t"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRomanBold34.copyWith(height: 1.00))))
                                                              ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 11,
                                                                      bottom:
                                                                          52),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgIconsearch,
                                                                  height:
                                                                      getVerticalSize(
                                                                          5.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          6.00)))
                                                        ])))
                                          ]))),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(left: 10, top: 19),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("msg_nh_n_vi_n_ch_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(32.00),
                                                width:
                                                    getHorizontalSize(347.00),
                                                margin:
                                                    getMargin(left: 2, top: 14),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 38,
                                                                      top: 2,
                                                                      right: 38,
                                                                      bottom:
                                                                          10),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowrightGray400,
                                                                  height:
                                                                      getVerticalSize(
                                                                          13.00),
                                                                  width: getHorizontalSize(
                                                                      8.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
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
                                                                        "lbl_tr_n_v_n_x"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanRegular17Black900
                                                                            .copyWith(height: 1.00))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        347.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            14),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray50))
                                                              ])))
                                                    ]))),
                                        Padding(
                                            padding:
                                                getPadding(top: 12, right: 10),
                                            child: Text(
                                                "msg_th_i_gian_l_m_v".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        Container(
                                            margin:
                                                getMargin(top: 4, right: 10),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 13,
                                                          bottom: 12),
                                                      child: Text(
                                                          "msg_9_00_sa_24_11_2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitMedium14
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 168,
                                                          top: 13,
                                                          bottom: 13),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCalendar13X12,
                                                          height:
                                                              getVerticalSize(
                                                                  13.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  12.00)))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 16, right: 10),
                                            child: Text("msg_ng_i_c_ch_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 320,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .fieldrowwrappController2,
                                            hintText: "lbl_b_nguy_n_th_b".tr,
                                            margin: getMargin(
                                                left: 2, top: 4, right: 10),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            padding: TextFormFieldPadding
                                                .PaddingAll11,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitMedium14),
                                        Padding(
                                            padding: getPadding(
                                                left: 8, top: 15, right: 10),
                                            child: Text("lbl_lo_i_d_ch_v".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        Padding(
                                            padding: getPadding(
                                                left: 8, top: 24, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      margin: getMargin(top: 1),
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 4,
                                                          bottom: 1),
                                                      decoration: AppDecoration
                                                          .txtFillPurple900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtCircleBorder10),
                                                      child: Text(
                                                          "lbl_tr_chuy_n".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular13WhiteA700
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      margin: getMargin(
                                                          left: 19, bottom: 1),
                                                      padding: getPadding(
                                                          left: 30,
                                                          top: 1,
                                                          bottom: 6),
                                                      decoration: AppDecoration
                                                          .txtFillPurple900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtCircleBorder10),
                                                      child: Text(
                                                          "lbl_n_u_n".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular13WhiteA700
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 127, right: 10),
                                            child: Text("msg_nh_gi_nh_n_v".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular13Black900
                                                    .copyWith())),
                                        Padding(
                                            padding: getPadding(
                                                left: 39, top: 28, right: 39),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            28.00)),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgStarcount,
                                                    height:
                                                        getVerticalSize(56.00),
                                                    width: getHorizontalSize(
                                                        216.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 21, right: 10),
                                            child: Text("lbl_ghi_ch".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular13
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 329,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .fieldrowwrappOneController,
                                            margin: getMargin(
                                                left: 2, top: 3, right: 10),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomButton(
                                            width: 320,
                                            text: "lbl_l_u".tr,
                                            margin:
                                                getMargin(top: 107, right: 10),
                                            shape: ButtonShape.Square,
                                            padding: ButtonPadding.PaddingAll10)
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
