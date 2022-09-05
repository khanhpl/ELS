import 'controller/elder_in4_detail_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_drop_down.dart';
import 'package:els/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ElderIn4DetailScreen extends GetWidget<ElderIn4DetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 26),
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
                                                                                19),
                                                                        child: Text(
                                                                            "msg_th_ng_tin_c_nh"
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
                                                                          54),
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
                                  margin:
                                      getMargin(left: 26, top: 19, right: 26),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_h_v_t_n".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 320,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .fieldrowwrappController1,
                                            hintText: "lbl_nguy_n_v_n_x".tr,
                                            margin: getMargin(top: 4),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            padding: TextFormFieldPadding
                                                .PaddingAll11,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitMedium14),
                                        Padding(
                                            padding:
                                                getPadding(top: 15, right: 10),
                                            child: Text("lbl_n_m_sinh".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        Container(
                                            margin: getMargin(top: 4),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 13,
                                                          bottom: 12),
                                                      child: Text(
                                                          "lbl_24_11_1941".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitMedium14
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 13,
                                                          right: 10,
                                                          bottom: 13),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCalendar13X12,
                                                          height:
                                                              getVerticalSize(
                                                                  13.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  12.00)))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 26, right: 10),
                                            child: Text("lbl_qu_n_huy_n".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        CustomDropDown(
                                            width: 320,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 30, right: 12),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            hintText: "lbl_qu_n_9".tr,
                                            margin: getMargin(top: 4),
                                            items: controller
                                                .elderIn4DetailModelObj
                                                .value
                                                .dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(top: 15, right: 10),
                                            child: Text("lbl_t_nh_th_nh_ph".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        CustomDropDown(
                                            width: 320,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 30, right: 12),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            hintText: "lbl_tp_h_ch_minh".tr,
                                            margin: getMargin(top: 4),
                                            padding:
                                                DropDownPadding.PaddingTB11,
                                            items: controller
                                                .elderIn4DetailModelObj
                                                .value
                                                .dropdownItemList1,
                                            onChanged: (value) {
                                              controller.onSelected1(value);
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(top: 12, right: 10),
                                            child: Text("lbl_a_ch".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 320,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .fieldrowwrappTwoController,
                                            hintText: "msg_l_1b_ph_c_l".tr,
                                            margin: getMargin(top: 4),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            padding:
                                                TextFormFieldPadding.PaddingT14,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitMedium14),
                                        Padding(
                                            padding:
                                                getPadding(top: 15, right: 10),
                                            child: Text("msg_t_nh_tr_ng_s_c".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular10
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 320,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .fieldrowwrappThreeController,
                                            hintText: "msg_c_b_nh_n_n_nh".tr,
                                            margin: getMargin(top: 4),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            padding: TextFormFieldPadding
                                                .PaddingAll11,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitMedium14,
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomButton(
                                            width: 320,
                                            text: "lbl_l_u".tr,
                                            margin: getMargin(top: 260),
                                            shape: ButtonShape.Square,
                                            padding: ButtonPadding.PaddingAll10)
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
