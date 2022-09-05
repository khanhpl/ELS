import 'controller/chat_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: ColorConstant
                                                        .bluegray50,
                                                    spreadRadius:
                                                        getHorizontalSize(2.00),
                                                    blurRadius:
                                                        getHorizontalSize(2.00),
                                                    offset: Offset(0, 1))
                                              ]),
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 9,
                                                  top: 4,
                                                  right: 220,
                                                  bottom: 7),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapImgArrowleft();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 6,
                                                                bottom: 5),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleftBlack900,
                                                                height:
                                                                    getVerticalSize(
                                                                        21.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00)))),
                                                    Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              margin: getMargin(
                                                                  top: 1),
                                                              decoration: AppDecoration
                                                                  .fillGray400
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder14),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 5,
                                                                                top: 12,
                                                                                right: 5),
                                                                            child: Text("lbl_32_x_32".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoItalicThin7.copyWith()))),
                                                                    Container(
                                                                        height: getSize(
                                                                            8.00),
                                                                        width: getSize(
                                                                            8.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                4),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.green400,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(4.00)),
                                                                            border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(1.00))))
                                                                  ])),
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 8,
                                                                  bottom: 1),
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
                                                                    Text(
                                                                        "lbl_tr_n_v_n_x"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoItalicThin17Black900
                                                                            .copyWith()),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                3),
                                                                        child: Text(
                                                                            "lbl_ang_ho_t_ng"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRomanRegular11Bluegray401.copyWith(height: 1.00)))
                                                                  ]))
                                                        ])
                                                  ])))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: getVerticalSize(76.00),
                                          width: getHorizontalSize(269.00),
                                          margin: getMargin(
                                              left: 16, top: 16, right: 16),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgBubble,
                                                        height: getVerticalSize(
                                                            76.00),
                                                        width:
                                                            getHorizontalSize(
                                                                269.00))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                237.00),
                                                        margin: getMargin(
                                                            left: 12,
                                                            top: 8,
                                                            right: 19,
                                                            bottom: 8),
                                                        child: Text(
                                                            "msg_xin_ch_o_camill"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular15WhiteA700
                                                                .copyWith(
                                                                    height:
                                                                        1.33))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 4, right: 16),
                                          child: Text("lbl_10_11_sa".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular11Bluegray402
                                                  .copyWith()))),
                                  CustomButton(
                                      width: 101,
                                      text: "lbl_t_t_nhi_n".tr,
                                      margin: getMargin(
                                          left: 21, top: 16, right: 21),
                                      variant: ButtonVariant.FillBluegray50,
                                      shape: ButtonShape.RoundedBorder15,
                                      padding: ButtonPadding.PaddingAll10,
                                      fontStyle:
                                          ButtonFontStyle.RobotoRomanRegular15,
                                      alignment: Alignment.centerLeft),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: getVerticalSize(33.00),
                                          width: getHorizontalSize(254.00),
                                          margin: getMargin(
                                              left: 17, top: 2, right: 17),
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgBubbleBluegray50,
                                                        height: getVerticalSize(
                                                            33.00),
                                                        width:
                                                            getHorizontalSize(
                                                                254.00))),
                                                Align(
                                                    alignment: Alignment
                                                        .topRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 7,
                                                            right: 1,
                                                            bottom: 10),
                                                        child: Text(
                                                            "msg_t_i_s_n_s_ng_gi"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular15
                                                                .copyWith(
                                                                    height:
                                                                        1.00))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 4, right: 16),
                                          child: Text("lbl_11_23_sa".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular11Bluegray402
                                                  .copyWith()))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: getVerticalSize(34.00),
                                          width: getHorizontalSize(182.00),
                                          margin: getMargin(
                                              left: 21, top: 16, right: 21),
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgBubblePurple900,
                                                        height: getVerticalSize(
                                                            34.00),
                                                        width:
                                                            getHorizontalSize(
                                                                182.00))),
                                                Align(
                                                    alignment: Alignment
                                                        .bottomRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 26,
                                                            top: 10,
                                                            right: 26,
                                                            bottom: 7),
                                                        child: Text(
                                                            "msg_c_m_n_b_n_tr"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular15WhiteA700
                                                                .copyWith(
                                                                    height:
                                                                        1.00))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: getVerticalSize(76.00),
                                          width: getHorizontalSize(269.00),
                                          margin: getMargin(
                                              left: 16, top: 2, right: 16),
                                          child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgBubblePurple90076X269,
                                                        height: getVerticalSize(
                                                            76.00),
                                                        width:
                                                            getHorizontalSize(
                                                                269.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                233.00),
                                                        margin: getMargin(
                                                            left: 12,
                                                            top: 8,
                                                            right: 12,
                                                            bottom: 8),
                                                        child: Text(
                                                            "msg_m_t_i_r_t_kh"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular15WhiteA700
                                                                .copyWith(
                                                                    height:
                                                                        1.33))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 4, right: 16),
                                          child: Text("lbl_11_35_sa".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular11Bluegray402
                                                  .copyWith()))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: getVerticalSize(34.00),
                                          width: getHorizontalSize(212.00),
                                          margin: getMargin(
                                              left: 16, top: 16, right: 16),
                                          child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgBubbleBluegray50,
                                                        height: getVerticalSize(
                                                            34.00),
                                                        width:
                                                            getHorizontalSize(
                                                                212.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 17,
                                                            top: 7,
                                                            right: 17,
                                                            bottom: 7),
                                                        child: Text(
                                                            "msg_kh_ng_sao_t_i"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular15
                                                                .copyWith(
                                                                    height:
                                                                        1.00))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 16, top: 4, right: 16),
                                          child: Text("lbl_11_42_sa".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular11Bluegray402
                                                  .copyWith())))
                                ]))
                          ]))))),
              Container(
                  decoration:
                      BoxDecoration(color: ColorConstant.whiteA700, boxShadow: [
                    BoxShadow(
                        color: ColorConstant.bluegray50,
                        spreadRadius: getHorizontalSize(2.00),
                        blurRadius: getHorizontalSize(2.00),
                        offset: Offset(0, -1))
                  ]),
                  child: Padding(
                      padding: getPadding(top: 4, bottom: 4),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 6, bottom: 6),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgPlus24X24,
                                    height: getSize(24.00),
                                    width: getSize(24.00))),
                            Container(
                                padding: getPadding(left: 8, top: 8, bottom: 8),
                                decoration: AppDecoration.txtFillBluegray50
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder10),
                                child: Text("lbl_nh_p_tin_nh_n".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular17Bluegray400
                                        .copyWith())),
                            Padding(
                                padding: getPadding(top: 6, bottom: 6),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgSend,
                                    height: getSize(24.00),
                                    width: getSize(24.00)))
                          ])))
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
