import '../history_screen/widgets/listuserpict3_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/listuserpict3_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 560),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                            "msg_l_ch_s_t_l_c"
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
                                  margin: getMargin(left: 9, top: 22, right: 7),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(right: 10),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      263.00),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray50));
                                                        },
                                                        itemCount: controller
                                                            .historyModelObj
                                                            .value
                                                            .listuserpict3ItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          Listuserpict3ItemModel
                                                              model = controller
                                                                  .historyModelObj
                                                                  .value
                                                                  .listuserpict3ItemList[index];
                                                          return Listuserpict3ItemWidget(
                                                              model);
                                                        })))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(263.00),
                                            margin: getMargin(left: 10, top: 8),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.bluegray50))
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
