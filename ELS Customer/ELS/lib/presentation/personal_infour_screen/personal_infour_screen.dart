import 'controller/personal_infour_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class PersonalInfourScreen extends GetWidget<PersonalInfourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(679.00),
                        width: getHorizontalSize(375.00),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: getPadding(
                                      left: 16, top: 11, right: 16, bottom: 11),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgNavbars,
                                      height: getVerticalSize(20.00),
                                      width: getHorizontalSize(343.00)))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  width: size.width,
                                  margin: getMargin(bottom: 10),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.bluegray50,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 1))
                                      ]),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgArrowleft();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 10),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleftBlack900,
                                                              height:
                                                                  getVerticalSize(
                                                                      17.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      12.00))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 19),
                                                      child: Text(
                                                          "msg_th_ng_tin_c_nh"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold34
                                                              .copyWith(
                                                                  height:
                                                                      1.00))))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 54),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgIconsearch,
                                                height: getVerticalSize(5.00),
                                                width: getHorizontalSize(6.00)))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
