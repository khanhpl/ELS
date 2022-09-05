import '../schedule_screen/widgets/listtwentysix_item_widget.dart';
import 'controller/schedule_controller.dart';
import 'models/listtwentysix_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends GetWidget<ScheduleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(bottom: 16),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  child: Container(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 11,
                                                          bottom: 8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgArrowleft();
                                                                        },
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(right: 10),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgArrowleftBlack900, height: getVerticalSize(21.00), width: getHorizontalSize(12.00))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            195.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                7,
                                                                            top:
                                                                                21),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              Text("lbl_th_ng_10".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold34.copyWith(height: 1.00)),
                                                                              Padding(padding: getPadding(top: 7, bottom: 9), child: Text("lbl_2022".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular17Black900.copyWith(height: 1.00)))
                                                                            ])))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 19,
                                                          right: 16,
                                                          bottom: 72),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconmore,
                                                          height:
                                                              getVerticalSize(
                                                                  5.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  20.00)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 8, right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text("lbl_cn".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular10Bluegray400
                                                          .copyWith()),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_t2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular10Black900
                                                              .copyWith())),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_t3".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular10Black900
                                                              .copyWith())),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_t4".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular10Black900
                                                              .copyWith())),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_t5".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular10Black900
                                                              .copyWith())),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_t6".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular10Black900
                                                              .copyWith())),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_t7".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular10Bluegray400
                                                              .copyWith()))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(261.00),
                                            width: getHorizontalSize(375.00),
                                            margin: getMargin(top: 8),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 27,
                                                              top: 13,
                                                              right: 27,
                                                              bottom: 13),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPoint,
                                                              height:
                                                                  getVerticalSize(
                                                                      159.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      266.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 18,
                                                              top: 15,
                                                              right: 18,
                                                              bottom: 15),
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemCount: controller
                                                                      .scheduleModelObj
                                                                      .value
                                                                      .listtwentysixItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    ListtwentysixItemModel
                                                                        model =
                                                                        controller
                                                                            .scheduleModelObj
                                                                            .value
                                                                            .listtwentysixItemList[index];
                                                                    return ListtwentysixItemWidget(
                                                                        model);
                                                                  })))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  150.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  375.00),
                                                          margin: getMargin(
                                                              top: 10),
                                                          decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0, 0),
                                                                  end:
                                                                      Alignment(
                                                                          0, 1),
                                                                  colors: [
                                                                ColorConstant
                                                                    .whiteA70000,
                                                                ColorConstant
                                                                    .whiteA700
                                                              ]))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin: getMargin(top: 31),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, right: 16),
                                                      child: Text(
                                                          "lbl_th_i_gian".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold17
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 11),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        decoration:
                                                                            AppDecoration
                                                                                .outlineBluegray5012,
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), decoration: BoxDecoration(color: ColorConstant.bluegray50)),
                                                                              Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), margin: getMargin(left: 44), decoration: BoxDecoration(color: ColorConstant.purple900)),
                                                                              Container(
                                                                                  height: getVerticalSize(44.00),
                                                                                  width: getHorizontalSize(179.00),
                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                    Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), margin: getMargin(left: 44, right: 44), decoration: BoxDecoration(color: ColorConstant.bluegray50)),
                                                                                    Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), margin: getMargin(left: 40, right: 40), decoration: BoxDecoration(color: ColorConstant.bluegray50)),
                                                                                    Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), margin: getMargin(left: 44, right: 44), decoration: BoxDecoration(color: ColorConstant.bluegray50)),
                                                                                    Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(44.00), width: getHorizontalSize(179.00), decoration: BoxDecoration(color: ColorConstant.purple90063)))
                                                                                  ])),
                                                                              Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), decoration: BoxDecoration(color: ColorConstant.purple900)),
                                                                              Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), margin: getMargin(left: 44), decoration: BoxDecoration(color: ColorConstant.bluegray50)),
                                                                              Container(height: getVerticalSize(44.00), width: getHorizontalSize(1.00), margin: getMargin(left: 44, right: 15), decoration: BoxDecoration(color: ColorConstant.bluegray50))
                                                                            ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            33,
                                                                        top: 4,
                                                                        right:
                                                                            4),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_7_sa"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtRobotoRomanRegular11
                                                                              .copyWith(height: 1.00)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  21),
                                                                          child: Text(
                                                                              "lbl_8_sa".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  22),
                                                                          child: Text(
                                                                              "lbl_9_sa".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  20),
                                                                          child: Text(
                                                                              "lbl_10_sa".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17),
                                                                          child: Text(
                                                                              "lbl_11_sa".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  15),
                                                                          child: Text(
                                                                              "lbl_12_ch".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  19),
                                                                          child: Text(
                                                                              "lbl_1_ch".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  19),
                                                                          child: Text(
                                                                              "lbl_2_ch".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular11.copyWith(height: 1.00)))
                                                                    ]))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 18,
                                                              right: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    decoration: AppDecoration
                                                                        .outlineBluegray5012
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 16, top: 16, right: 16),
                                                                              child: Text("lbl_b_t_u".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(height: 1.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 16, top: 11, right: 16, bottom: 16),
                                                                              child: Text("lbl_8_00_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanMedium17.copyWith(height: 1.00)))
                                                                        ])),
                                                                Container(
                                                                    decoration: AppDecoration
                                                                        .outlineBluegray5012
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 16, top: 16, right: 16),
                                                                              child: Text("lbl_k_t_th_c".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular13Gray700.copyWith(height: 1.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 16, top: 11, right: 16, bottom: 16),
                                                                              child: Text("lbl_12_00_ch".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanMedium17.copyWith(height: 1.00)))
                                                                        ]))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 28, right: 286),
                                            child: Text("lbl_nh_c_nh".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanBold17
                                                    .copyWith(height: 1.00)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 28, right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 2),
                                                      child: Text(
                                                          "msg_ch_n_th_i_gian"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 41, top: 2),
                                                      child: Text(
                                                          "lbl_tr_c_30_ph_t".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Bluegray400
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 1,
                                                          bottom: 5),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowrightGray400,
                                                          height:
                                                              getVerticalSize(
                                                                  13.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  8.00)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(left: 10, top: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    CustomButton(
                                        width: 343,
                                        text: "lbl_xong".tr,
                                        margin: getMargin(
                                            left: 10, top: 16, right: 10),
                                        alignment: Alignment.center)
                                  ])))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
