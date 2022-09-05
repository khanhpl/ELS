import 'controller/add_work_one_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddWorkOneScreen extends GetWidget<AddWorkOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            left: 3,
            top: 53,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 18,
                              right: 18,
                            ),
                            child: Text(
                              "msg_t_o_tin_c_ng_vi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold34.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          CustomTextFormField(
                            width: 343,
                            focusNode: FocusNode(),
                            controller: controller.locationController,
                            hintText: "lbl_h_ch_minh".tr,
                            margin: getMargin(
                              left: 13,
                              top: 29,
                              right: 11,
                            ),
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: getMargin(
                                left: 1,
                                top: 1,
                                right: 16,
                                bottom: 15,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgLocation16X13,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              minWidth: getSize(
                                16.00,
                              ),
                              minHeight: getSize(
                                16.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 28,
                              right: 18,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 3,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getVerticalSize(
                                      13.00,
                                    ),
                                    width: getHorizontalSize(
                                      14.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                  ),
                                  child: Text(
                                    "lbl_ng_y".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular17Bluegray400
                                        .copyWith(
                                      height: 1.00,
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
                              343.00,
                            ),
                            margin: getMargin(
                              left: 13,
                              top: 11,
                              right: 11,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray50,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 28,
                              right: 18,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 3,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: getSize(
                                      14.00,
                                    ),
                                    width: getSize(
                                      14.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_th_i_gian".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular17Bluegray400
                                        .copyWith(
                                      height: 1.00,
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
                              343.00,
                            ),
                            margin: getMargin(
                              left: 13,
                              top: 11,
                              right: 11,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray50,
                            ),
                          ),
                          CustomTextFormField(
                            width: 343,
                            focusNode: FocusNode(),
                            controller: controller.categoryController,
                            hintText: "lbl_lo_i_d_ch_v".tr,
                            margin: getMargin(
                              left: 13,
                              top: 28,
                              right: 11,
                            ),
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: getMargin(
                                top: 1,
                                right: 16,
                                bottom: 17,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgForward,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              minWidth: getSize(
                                12.00,
                              ),
                              minHeight: getSize(
                                12.00,
                              ),
                            ),
                          ),
                          CustomTextFormField(
                            width: 343,
                            focusNode: FocusNode(),
                            controller: controller.genderController,
                            hintText: "lbl_gi_i_t_nh".tr,
                            margin: getMargin(
                              left: 13,
                              top: 26,
                              right: 11,
                            ),
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: getMargin(
                                top: 1,
                                right: 16,
                                bottom: 16,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgLightbulb,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              minWidth: getSize(
                                14.00,
                              ),
                              minHeight: getSize(
                                14.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 13,
                                top: 41,
                                right: 13,
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
                                      "msg_kinh_nghi_m_l_m".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanBold17
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 19,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomButton(
                                          width: 167,
                                          text: "msg_kh_ng_y_u_c_u".tr,
                                          variant:
                                              ButtonVariant.OutlineBluegray100,
                                          padding: ButtonPadding.PaddingAll10,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium15,
                                        ),
                                        CustomButton(
                                          width: 167,
                                          text: "lbl_1".tr,
                                          variant:
                                              ButtonVariant.OutlinePurple900,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium15Purple900,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomButton(
                                          width: 167,
                                          text: "lbl_1_5".tr,
                                          variant:
                                              ButtonVariant.OutlineBluegray100,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium15,
                                        ),
                                        CustomButton(
                                          width: 167,
                                          text: "lbl_5_10".tr,
                                          variant:
                                              ButtonVariant.OutlineBluegray100,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomButton(
                                          width: 167,
                                          text: "lbl_10_15".tr,
                                          variant:
                                              ButtonVariant.OutlineBluegray100,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium15,
                                        ),
                                        CustomButton(
                                          width: 167,
                                          text: "lbl_15_20".tr,
                                          variant:
                                              ButtonVariant.OutlineBluegray100,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium15,
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
                              left: 18,
                              top: 25,
                              right: 18,
                            ),
                            child: Text(
                              "lbl_khung_gi_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold17.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 19,
                              right: 18,
                            ),
                            child: Text(
                              "msg_t_15000_n_1".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular15.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 16,
                              right: 18,
                            ),
                            child: Text(
                              "msg_gi_trung_b_nh".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular15Bluegray400
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                76.00,
                              ),
                              width: getHorizontalSize(
                                343.00,
                              ),
                              margin: getMargin(
                                left: 13,
                                top: 17,
                                right: 11,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 49,
                                        right: 49,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgGraphic,
                                        height: getVerticalSize(
                                          60.00,
                                        ),
                                        width: getHorizontalSize(
                                          135.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: SliderTheme(
                                      data: SliderThemeData(
                                        trackShape:
                                            RoundedRectSliderTrackShape(),
                                        activeTrackColor:
                                            ColorConstant.purple900,
                                        inactiveTrackColor:
                                            ColorConstant.bluegray50,
                                        thumbColor: ColorConstant.whiteA700,
                                        thumbShape: RoundSliderThumbShape(),
                                      ),
                                      child: RangeSlider(
                                        values: RangeValues(
                                          0,
                                          0,
                                        ),
                                        min: 0.0,
                                        max: 100.0,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 11,
                              right: 20,
                            ),
                            child: Text(
                              "msg_i_m_x_p_h_ng_t".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold17.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 13,
                                top: 11,
                                right: 13,
                              ),
                              decoration: AppDecoration.outlineGray400.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration:
                                        AppDecoration.fillPurple900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL100,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 24,
                                            top: 7,
                                            bottom: 8,
                                          ),
                                          child: Text(
                                            "lbl_12".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoItalicThin13
                                                .copyWith(
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 10,
                                            right: 23,
                                            bottom: 9,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgStar,
                                            height: getSize(
                                              10.00,
                                            ),
                                            width: getSize(
                                              10.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      29.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 6,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoItalicThin13Black900
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 10,
                                      bottom: 9,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar10X10,
                                      height: getSize(
                                        10.00,
                                      ),
                                      width: getSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      29.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 22,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 6,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_3".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoItalicThin13Black900
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 10,
                                      bottom: 9,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar10X10,
                                      height: getSize(
                                        10.00,
                                      ),
                                      width: getSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      29.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 21,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 6,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_4".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoItalicThin13Black900
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 10,
                                      bottom: 9,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar10X10,
                                      height: getSize(
                                        10.00,
                                      ),
                                      width: getSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      29.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 21,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      29.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 24,
                                      top: 6,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_5".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoItalicThin13Black900
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 10,
                                      bottom: 9,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar10X10,
                                      height: getSize(
                                        10.00,
                                      ),
                                      width: getSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 25,
                              top: 43,
                              right: 25,
                            ),
                            child: Text(
                              "lbl_ghi_ch".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitRegular13.copyWith(),
                            ),
                          ),
                          CustomTextFormField(
                            width: 329,
                            focusNode: FocusNode(),
                            controller: controller.fieldrowwrappController,
                            margin: getMargin(
                              left: 13,
                              top: 3,
                              right: 13,
                            ),
                            variant: TextFormFieldVariant.FillWhiteA700,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                          ),
                          CustomButton(
                            width: 343,
                            text: "lbl_ng_tin".tr,
                            margin: getMargin(
                              left: 13,
                              top: 48,
                              right: 10,
                            ),
                            alignment: Alignment.center,
                          ),
                          Container(
                            margin: getMargin(
                              top: 111,
                            ),
                            decoration: AppDecoration.outlineBluegray5012,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: getMargin(
                                    left: 16,
                                    top: 9,
                                    bottom: 35,
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
                                                .txtRobotoRomanRegular10
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
                                  margin: getMargin(
                                    top: 4,
                                    bottom: 35,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomButton(
                                        width: 30,
                                        text: "lbl".tr,
                                        margin: getMargin(
                                          left: 3,
                                          right: 3,
                                        ),
                                        shape: ButtonShape.RoundedBorder15,
                                        padding: ButtonPadding.PaddingAll4,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsBold22,
                                        alignment: Alignment.center,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_t_o_m_i".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanRegular10Purple900
                                              .copyWith(),
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
                                            svgPath: ImageConstant.imgUser,
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
                                                .txtRobotoRomanRegular10Bluegray400
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
