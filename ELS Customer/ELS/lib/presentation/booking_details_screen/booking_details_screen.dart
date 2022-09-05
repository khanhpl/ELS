import 'controller/booking_details_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BookingDetailsScreen extends GetWidget<BookingDetailsController> {
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
                      decoration: AppDecoration.outlineBluegray50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              svgPath: ImageConstant.imgNavbarsWhiteA700,
                              height: getVerticalSize(
                                44.00,
                              ),
                              width: getHorizontalSize(
                                375.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 8,
                              right: 16,
                              bottom: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding: getPadding(
                                        left: 10,
                                        top: 23,
                                        right: 10,
                                        bottom: 22,
                                      ),
                                      decoration:
                                          AppDecoration.txtFillGray400.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtCircleBorder30,
                                      ),
                                      child: Text(
                                        "lbl_60_x_60".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoItalicThin13Bluegray400
                                            .copyWith(),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 16,
                                        top: 7,
                                        bottom: 6,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_tr_n_v_n_x".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanBold20Black900
                                                .copyWith(
                                              height: 1.00,
                                            ),
                                          ),
                                          Container(
                                            margin: getMargin(
                                              top: 6,
                                              right: 10,
                                            ),
                                            padding: getPadding(
                                              left: 5,
                                              top: 4,
                                              right: 6,
                                              bottom: 2,
                                            ),
                                            decoration: AppDecoration
                                                .txtFillGreen400
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCircleBorder10,
                                            ),
                                            child: Text(
                                              "lbl_x_c_nh_n2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular13WhiteA700
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
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant: IconButtonVariant
                                            .OutlineBluegray100,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(
                                          left: 8,
                                        ),
                                        variant: IconButtonVariant
                                            .OutlineBluegray100,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgCall40X40,
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 24,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: getMargin(
                              bottom: 3,
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
                                    "lbl_b_t_u".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular13Gray700
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    109.00,
                                  ),
                                  margin: getMargin(
                                    top: 13,
                                  ),
                                  child: Text(
                                    "msg_th_hai_24_th2".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanMedium17
                                        .copyWith(
                                      height: 1.29,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_8_00_sa".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium13Gray700
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 32,
                              bottom: 29,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 2,
                                      right: 1,
                                    ),
                                    child: Text(
                                      "lbl_4gi_0ph".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoRomanMedium13Gray700
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgComputer,
                                    height: getVerticalSize(
                                      8.00,
                                    ),
                                    width: getHorizontalSize(
                                      53.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              bottom: 3,
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
                                    "lbl_k_t_th_c".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular13Gray700
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    109.00,
                                  ),
                                  margin: getMargin(
                                    top: 13,
                                  ),
                                  child: Text(
                                    "msg_th_hai_24_th2".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanMedium17
                                        .copyWith(
                                      height: 1.29,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_12_00_ch".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium13Gray700
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 74,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMegaphone,
                              height: getSize(
                                14.00,
                              ),
                              width: getSize(
                                14.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 24,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_a_ch".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 12,
                        right: 16,
                      ),
                      child: Text(
                        "msg_g_v_p_th_nh_p".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium17.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 7,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_0_31_km".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium13Gray700.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 27,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_gi_ti_n".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 8,
                        right: 16,
                      ),
                      child: Text(
                        "msg_t_ng_ti_n_16000".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium17.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 7,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_cho_4gi_0ph".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium13Gray700.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 25,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_nh_c_nh".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 13,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_tr_c_30_ph_t".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium17.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 8,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_kh_ng_l_p_l_i".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium13Gray700.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 343,
                    text: "lbl_hu".tr,
                    margin: getMargin(
                      left: 16,
                      top: 159,
                      right: 16,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.FillBluegray50,
                    fontStyle: ButtonFontStyle.RobotoItalicThin17Bluegray400,
                    alignment: Alignment.center,
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
