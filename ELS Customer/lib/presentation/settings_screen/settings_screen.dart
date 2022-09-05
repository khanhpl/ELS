import 'controller/settings_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends GetWidget<SettingsController> {
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                            child: Text("lbl_c_i_t2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanBold34
                                                    .copyWith(height: 1.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 16, top: 12, right: 285),
                              child: Text("lbl_t_i_kho_n".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold17
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 22, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomIconButton(
                                              height: 29,
                                              width: 29,
                                              shape: IconButtonShape
                                                  .RoundedBorder6,
                                              padding:
                                                  IconButtonPadding.PaddingAll5,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgLock29X29)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 4, bottom: 8),
                                              child: Text("lbl_i_m_t_kh_u".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular17Black900
                                                      .copyWith(height: 1.00)))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(314.00),
                          margin: getMargin(left: 10, top: 7),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 8, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomIconButton(
                                              height: 29,
                                              width: 29,
                                              shape: IconButtonShape
                                                  .RoundedBorder6,
                                              padding:
                                                  IconButtonPadding.PaddingAll5,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgNotification29X29)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 8, bottom: 3),
                                              child: Text("lbl_th_ng_b_o".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular17Black900
                                                      .copyWith(height: 1.00)))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(314.00),
                          margin: getMargin(left: 10, top: 7),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 8, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 29,
                                              width: 29,
                                              shape: IconButtonShape
                                                  .RoundedBorder6,
                                              padding:
                                                  IconButtonPadding.PaddingAll5,
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 7, bottom: 4),
                                              child: Text(
                                                  "msg_thi_t_l_p_ri_ng".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular17Black900
                                                      .copyWith(height: 1.00)))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(314.00),
                          margin: getMargin(left: 10, top: 7),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 8, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomIconButton(
                                              height: 29,
                                              width: 29,
                                              shape: IconButtonShape
                                                  .RoundedBorder6,
                                              padding:
                                                  IconButtonPadding.PaddingAll5,
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcon)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 7, bottom: 4),
                                              child: Text("lbl_ng_xu_t".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular17Black900
                                                      .copyWith(height: 1.00)))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray400,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(8.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(314.00),
                          margin: getMargin(left: 10, top: 7, bottom: 20),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
