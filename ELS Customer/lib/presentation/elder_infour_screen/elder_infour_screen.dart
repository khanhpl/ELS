import 'controller/elder_infour_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class ElderInfourScreen extends GetWidget<ElderInfourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: getHorizontalSize(375.00),
                        margin: getMargin(bottom: 30),
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      margin: getMargin(bottom: 10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(106.00),
                                                    width: getHorizontalSize(
                                                        375.00),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 11,
                                                                      right: 16,
                                                                      bottom:
                                                                          11),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgNavbars,
                                                                      height: getVerticalSize(
                                                                          20.00),
                                                                      width: getHorizontalSize(
                                                                          343.00)))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  width: size
                                                                      .width,
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .whiteA700,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                            color:
                                                                                ColorConstant.bluegray50,
                                                                            spreadRadius: getHorizontalSize(2.00),
                                                                            blurRadius: getHorizontalSize(2.00),
                                                                            offset: Offset(0, 1))
                                                                      ]),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
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
                                                                                      child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowleftBlack900, height: getVerticalSize(17.00), width: getHorizontalSize(12.00))))),
                                                                              Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 6, top: 19), child: Text("lbl_ng_i_th_n".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold34.copyWith(height: 1.00))))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 11, bottom: 54),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgIconsearch, height: getVerticalSize(5.00), width: getHorizontalSize(6.00)))
                                                                      ])))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(13.00),
                                                    width:
                                                        getHorizontalSize(8.00),
                                                    margin: getMargin(
                                                        left: 17,
                                                        top: 92,
                                                        right: 17),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightGray400,
                                                              height:
                                                                  getVerticalSize(
                                                                      13.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      8.00)))
                                                    ])))
                                          ]))),
                              CustomFloatingButton(
                                  height: 55,
                                  width: 55,
                                  margin:
                                      getMargin(left: 155, top: 10, right: 155),
                                  alignment: Alignment.bottomCenter,
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgPlus55X55,
                                      height: getVerticalSize(27.50),
                                      width: getHorizontalSize(27.50)))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
