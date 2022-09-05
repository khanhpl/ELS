import 'controller/search_two_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchTwoScreen extends GetWidget<SearchTwoController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                                top: 21,
                                                right: 16,
                                                bottom: 8),
                                            child: Text("lbl_kh_m_ph".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanBold34
                                                    .copyWith(height: 1.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.outlineBluegray50,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 62, top: 12, right: 62),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 4),
                                                  child: Text("lbl_t_m_ki_m".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15
                                                          .copyWith(
                                                              height: 1.00))),
                                              Text("lbl_g_n_y".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15Bluegray400
                                                      .copyWith(height: 1.00))
                                            ])),
                                    Container(
                                        height: getVerticalSize(2.00),
                                        width: getHorizontalSize(187.00),
                                        margin: getMargin(top: 10, right: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.purple900))
                                  ]))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.locationController1,
                          hintText: "lbl_h_ch_minh".tr,
                          margin: getMargin(left: 16, top: 25, right: 16),
                          prefix: Container(
                              margin: getMargin(
                                  left: 1, top: 1, right: 16, bottom: 15),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLocation16X13)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(16.00),
                              minHeight: getSize(16.00))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 28, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 3),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(14.00))),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("lbl_ng_y".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular17Bluegray400
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 11, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 28, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 3),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgClock,
                                            height: getSize(14.00),
                                            width: getSize(14.00))),
                                    Padding(
                                        padding: getPadding(left: 16, top: 1),
                                        child: Text("lbl_th_i_gian".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular17Bluegray400
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 11, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.categoryController1,
                          hintText: "lbl_lo_i_d_ch_v".tr,
                          margin: getMargin(left: 16, top: 28, right: 16),
                          prefix: Container(
                              margin: getMargin(top: 1, right: 16, bottom: 17),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgForward)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(12.00),
                              minHeight: getSize(12.00))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.genderController1,
                          hintText: "lbl_gi_i_t_nh".tr,
                          margin: getMargin(left: 16, top: 26, right: 16),
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(top: 1, right: 16, bottom: 16),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLightbulb)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(14.00),
                              minHeight: getSize(14.00))),
                      CustomButton(
                          width: 343,
                          text: "lbl_t_m_nh_n_vi_n".tr,
                          margin: getMargin(
                              left: 16, top: 238, right: 16, bottom: 20))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
