import 'controller/account_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AccountScreen extends GetWidget<AccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      right: 2,
                    ),
                    decoration: AppDecoration.fillGray50,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width,
                            margin: getMargin(
                              left: 16,
                              top: 11,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.imgSettings,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                    bottom: 7,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgIconmore,
                                    height: getVerticalSize(
                                      5.00,
                                    ),
                                    width: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 21,
                            right: 16,
                            bottom: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: AppDecoration.fillGray400.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder43,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 34,
                                        right: 15,
                                      ),
                                      child: Text(
                                        "lbl_86_x_86".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoItalicThin18
                                            .copyWith(),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: getSize(
                                          32.00,
                                        ),
                                        width: getSize(
                                          32.00,
                                        ),
                                        margin: getMargin(
                                          left: 10,
                                          top: 1,
                                        ),
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.purple900,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    all: 9,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgTicket14X14,
                                                    height: getSize(
                                                      14.00,
                                                    ),
                                                    width: getSize(
                                                      14.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 16,
                                  top: 18,
                                  bottom: 18,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        right: 10,
                                      ),
                                      child: Text(
                                        "lbl_v_n_a".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanBold24
                                            .copyWith(
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 10,
                                      ),
                                      child: Text(
                                        "msg_vana123_mail_co".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular15Gray700
                                            .copyWith(
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 3,
                      top: 19,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 8,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "msg_th_ng_tin_c_nh".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular17Black900
                                    .copyWith(
                                  height: 1.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 202,
                                  top: 1,
                                  bottom: 2,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowrightGray400,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 11,
                            right: 7,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 13,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "lbl_ng_i_th_n2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular17Black900
                                    .copyWith(
                                  height: 1.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 251,
                                  top: 1,
                                  bottom: 2,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowrightGray400,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 11,
                            right: 7,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 12,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "msg_l_ch_s_t_l_c".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular17Black900
                                    .copyWith(
                                  height: 1.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 221,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowrightGray400,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 12,
                            right: 7,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              35.00,
                            ),
                            width: getHorizontalSize(
                              359.00,
                            ),
                            margin: getMargin(
                              left: 8,
                              top: 9,
                              right: 7,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 32,
                                      right: 32,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: getVerticalSize(
                                            25.00,
                                          ),
                                          width: getHorizontalSize(
                                            61.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  width: getHorizontalSize(
                                                    25.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 10,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineWhiteA700
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 4,
                                                          top: 9,
                                                          right: 4,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "lbl_25_x_25".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoItalicThin6
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  margin: getMargin(
                                                    left: 18,
                                                    right: 18,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineWhiteA700
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 4,
                                                          top: 9,
                                                          right: 4,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "lbl_25_x_25".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoItalicThin6
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  margin: getMargin(
                                                    right: 10,
                                                  ),
                                                  padding: getPadding(
                                                    left: 4,
                                                    top: 9,
                                                    right: 4,
                                                    bottom: 9,
                                                  ),
                                                  decoration: AppDecoration
                                                      .txtOutlineWhiteA700
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder12,
                                                  ),
                                                  child: Text(
                                                    "lbl_25_x_25".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoItalicThin6
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 8,
                                          ),
                                          padding: getPadding(
                                            left: 4,
                                            top: 4,
                                            right: 7,
                                            bottom: 7,
                                          ),
                                          decoration: AppDecoration
                                              .txtFillBluegray50
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder12,
                                          ),
                                          child: Text(
                                            "lbl_52".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular13Bluegray400
                                                .copyWith(
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "lbl_y_u_th_ch".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular17Black900
                                                    .copyWith(
                                                  height: 1.00,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 267,
                                                  top: 2,
                                                  bottom: 1,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightGray400,
                                                  height: getVerticalSize(
                                                    13.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    8.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            359.00,
                                          ),
                                          margin: getMargin(
                                            top: 13,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 6,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_th_thanh_to_n".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanBold17.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              top: 30,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomButton(
                                      width: 40,
                                      text: "lbl_40_x_40".tr,
                                      variant: ButtonVariant.FillGray400,
                                      fontStyle:
                                          ButtonFontStyle.RobotoItalicThin9,
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 12,
                                        bottom: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "lbl_th_ch_nh".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular15
                                                  .copyWith(
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Text(
                                              "msg_9432".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular13Gray700
                                                  .copyWith(
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                    bottom: 13,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowrightGray400,
                                    height: getVerticalSize(
                                      13.00,
                                    ),
                                    width: getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 10,
                            top: 16,
                            right: 5,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              top: 16,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomButton(
                                      width: 40,
                                      text: "lbl_40_x_40".tr,
                                      variant: ButtonVariant.FillGray400,
                                      fontStyle:
                                          ButtonFontStyle.RobotoItalicThin9,
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 12,
                                        bottom: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_th_c_a_a".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15
                                                .copyWith(
                                              height: 1.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 8,
                                              right: 10,
                                            ),
                                            child: Text(
                                              "lbl_6857".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular13Gray700
                                                  .copyWith(
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                    bottom: 13,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowrightGray400,
                                    height: getVerticalSize(
                                      13.00,
                                    ),
                                    width: getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 10,
                            top: 16,
                            right: 5,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              top: 8,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_th_m_th_m_i".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular17Purple900
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomIconButton(
                                        height: 20,
                                        width: 20,
                                        shape: IconButtonShape.CircleBorder10,
                                        padding: IconButtonPadding.PaddingAll5,
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgPlus55X55,
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 20,
                                        width: 20,
                                        shape: IconButtonShape.CircleBorder10,
                                        padding: IconButtonPadding.PaddingAll5,
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgPlus55X55,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 34,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "msg_qu_n_l_tin_n".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular17Black900
                                    .copyWith(
                                  height: 1.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 215,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowrightGray400,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 12,
                            right: 7,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 4,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "lbl_c_i_t".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular17Black900
                                    .copyWith(
                                  height: 1.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 282,
                                  top: 1,
                                  bottom: 2,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowrightGray400,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 11,
                            right: 7,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              top: 22,
                              right: 7,
                            ),
                            decoration: AppDecoration.outlineGray301.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 32,
                                      top: 32,
                                      right: 32,
                                    ),
                                    child: CommonImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightGray600,
                                      height: getSize(
                                        16.00,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 63,
                                    top: 29,
                                    right: 63,
                                  ),
                                  child: Text(
                                    "msg_nh_gi_ng_d".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold24
                                        .copyWith(),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 63,
                                    top: 24,
                                    right: 63,
                                    bottom: 4,
                                  ),
                                  child: Container(
                                    width: getHorizontalSize(
                                      240.00,
                                    ),
                                    height: getVerticalSize(
                                      48.00,
                                    ),
                                    child: Obx(
                                      () => PinCodeTextField(
                                        appContext: context,
                                        controller:
                                            controller.otpController.value,
                                        length: 5,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        keyboardType: TextInputType.number,
                                        autoDismissKeyboard: true,
                                        enableActiveFill: true,
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                        ],
                                        onChanged: (value) {},
                                        pinTheme: PinTheme(
                                          fieldHeight: getHorizontalSize(
                                            32.00,
                                          ),
                                          fieldWidth: getHorizontalSize(
                                            32.00,
                                          ),
                                          shape: PinCodeFieldShape.circle,
                                          selectedFillColor:
                                              ColorConstant.fromHex(
                                                  "#1212121D"),
                                          activeFillColor:
                                              ColorConstant.fromHex(
                                                  "#1212121D"),
                                          inactiveFillColor:
                                              ColorConstant.fromHex(
                                                  "#1212121D"),
                                          inactiveColor: ColorConstant.fromHex(
                                              "#1212121D"),
                                          selectedColor: ColorConstant.fromHex(
                                              "#1212121D"),
                                          activeColor: ColorConstant.fromHex(
                                              "#1212121D"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 2,
                              top: 36,
                            ),
                            decoration: AppDecoration.outlineBluegray5012,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: getMargin(
                                    left: 17,
                                    top: 5,
                                    bottom: 39,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 11,
                                            right: 11,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgHome,
                                            height: getVerticalSize(
                                              24.00,
                                            ),
                                            width: getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_trang_ch".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular10Bluegray400
                                                .copyWith(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 8,
                                    bottom: 36,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 9,
                                          right: 8,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgTicket,
                                          height: getVerticalSize(
                                            24.00,
                                          ),
                                          width: getHorizontalSize(
                                            23.00,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_l_ch_tr_nh".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular10Bluegray400
                                                .copyWith(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    48.00,
                                  ),
                                  width: getHorizontalSize(
                                    75.00,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                    bottom: 34,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 25,
                                            top: 8,
                                            right: 25,
                                            bottom: 10,
                                          ),
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgLightbulb23X24,
                                            height: getVerticalSize(
                                              23.00,
                                            ),
                                            width: getHorizontalSize(
                                              24.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: getMargin(
                                            left: 19,
                                            top: 10,
                                            right: 19,
                                            bottom: 1,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                width: 30,
                                                text: "lbl".tr,
                                                margin: getMargin(
                                                  left: 3,
                                                  right: 3,
                                                ),
                                                variant:
                                                    ButtonVariant.FillGray400,
                                                shape:
                                                    ButtonShape.RoundedBorder15,
                                                padding:
                                                    ButtonPadding.PaddingAll4,
                                                fontStyle: ButtonFontStyle
                                                    .PoppinsBold22,
                                                alignment: Alignment.center,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                ),
                                                child: Text(
                                                  "lbl_t_o_m_i".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular10Bluegray400
                                                      .copyWith(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 8,
                                    bottom: 35,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          right: 14,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgNotification,
                                          height: getVerticalSize(
                                            24.00,
                                          ),
                                          width: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_th_ng_b_o".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular10Bluegray400
                                                .copyWith(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 8,
                                    right: 15,
                                    bottom: 36,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 11,
                                            right: 7,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgUser24X24,
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_t_i_kho_n".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular10Purple900
                                                .copyWith(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
