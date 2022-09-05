import '../browse_screen/widgets/banner01_item_widget.dart';
import '../browse_screen/widgets/listuserpict5_item_widget.dart';
import 'controller/browse_controller.dart';
import 'models/banner01_item_model.dart';
import 'models/listuserpict5_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_search_view.dart';
import 'package:els/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends GetWidget<BrowseController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
            top: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: size.width,
                margin: getMargin(
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomSearchView(
                      width: 326,
                      focusNode: FocusNode(),
                      controller: controller.searchController,
                      hintText: "lbl_t_m_ki_m".tr,
                      prefix: Container(
                        margin: getMargin(
                          left: 7,
                          top: 11,
                          right: 9,
                          bottom: 11,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgSearch,
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
                    Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 5,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCar,
                        height: getSize(
                          23.00,
                        ),
                        width: getSize(
                          23.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              448.00,
                            ),
                            width: getHorizontalSize(
                              326.00,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                padding: getPadding(
                                  left: 16,
                                  right: 16,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.browseModelObj.value
                                    .banner01ItemList.length,
                                itemBuilder: (context, index) {
                                  Banner01ItemModel model = controller
                                      .browseModelObj
                                      .value
                                      .banner01ItemList[index];
                                  return Banner01ItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                top: 16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 15,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "lbl_d_ch_v".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRomanBold17
                                              .copyWith(
                                            height: 1.00,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 245,
                                            top: 1,
                                            bottom: 4,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "lbl_t_t_c".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoItalicThin13Bluegray400
                                                    .copyWith(
                                                  height: 1.00,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 3,
                                                  top: 3,
                                                  bottom: 2,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getVerticalSize(
                                                    8.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    4.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(
                                      left: 16,
                                      top: 11,
                                      right: 16,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                72.00,
                                              ),
                                              width: getHorizontalSize(
                                                138.00,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 29,
                                                        top: 23,
                                                        right: 25,
                                                        bottom: 24,
                                                      ),
                                                      child: Text(
                                                        "lbl_138_x_72".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoItalicThin24
                                                            .copyWith(),
                                                      ),
                                                    ),
                                                  ),
                                                  CustomTextFormField(
                                                    width: 138,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .groupTwentyThreeController,
                                                    hintText:
                                                        "msg_ch_m_s_c_c_nh".tr,
                                                    variant:
                                                        TextFormFieldVariant
                                                            .FillBlack9007e,
                                                    padding:
                                                        TextFormFieldPadding
                                                            .PaddingAll19,
                                                    fontStyle:
                                                        TextFormFieldFontStyle
                                                            .RobotoItalicThin17,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                72.00,
                                              ),
                                              width: getHorizontalSize(
                                                138.00,
                                              ),
                                              margin: getMargin(
                                                left: 170,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 26,
                                                        top: 23,
                                                        right: 25,
                                                        bottom: 24,
                                                      ),
                                                      child: Text(
                                                        "lbl_138_x_72".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtRobotoItalicThin24
                                                            .copyWith(),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                      decoration: AppDecoration
                                                          .fillBlack9007e
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width:
                                                                getHorizontalSize(
                                                              106.00,
                                                            ),
                                                            margin: getMargin(
                                                              left: 16,
                                                              top: 19,
                                                              right: 16,
                                                              bottom: 16,
                                                            ),
                                                            child: Text(
                                                              "lbl_tr_chuy_n_c_ng"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoItalicThin17WhiteA700
                                                                  .copyWith(
                                                                height: 1.18,
                                                              ),
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
                                        Container(
                                          height: getVerticalSize(
                                            72.00,
                                          ),
                                          width: getHorizontalSize(
                                            138.00,
                                          ),
                                          margin: getMargin(
                                            left: 16,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 29,
                                                    top: 23,
                                                    right: 25,
                                                    bottom: 24,
                                                  ),
                                                  child: Text(
                                                    "lbl_138_x_72".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoItalicThin24
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ),
                                              CustomTextFormField(
                                                width: 138,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .groupTwentyTwoController,
                                                hintText: "lbl_ch_m_s_c_y_t".tr,
                                                variant: TextFormFieldVariant
                                                    .FillBlack9007e,
                                                padding: TextFormFieldPadding
                                                    .PaddingTB30,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .RobotoItalicThin17,
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.centerLeft,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            72.00,
                                          ),
                                          width: getHorizontalSize(
                                            138.00,
                                          ),
                                          margin: getMargin(
                                            left: 16,
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
                            child: Container(
                              margin: getMargin(
                                left: 16,
                                top: 16,
                                right: 12,
                              ),
                              decoration: AppDecoration.fillPurple900.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 31,
                                      bottom: 31,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCheckmark32X32,
                                      height: getSize(
                                        32.00,
                                      ),
                                      width: getSize(
                                        32.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 13,
                                      top: 20,
                                      bottom: 11,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            265.00,
                                          ),
                                          child: Text(
                                            "msg_g_p_g_nh_n_vi".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRomanBold16
                                                .copyWith(
                                              height: 1.38,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 1,
                                              top: 11,
                                              right: 2,
                                            ),
                                            child: Text(
                                              "msg_kh_n_ng_v_kin".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular13WhiteA700
                                                  .copyWith(
                                                height: 1.00,
                                              ),
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
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 16,
                                top: 17,
                                right: 12,
                              ),
                              decoration:
                                  AppDecoration.outlineBluegray5012.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 12,
                                      bottom: 11,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar1,
                                      height: getVerticalSize(
                                        21.00,
                                      ),
                                      width: getHorizontalSize(
                                        22.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 16,
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "msg_c_nh_gi_c".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoRomanRegular15Gray700
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      44.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray50,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 45,
                                      top: 16,
                                      bottom: 16,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgFilter12X14,
                                      height: getVerticalSize(
                                        12.00,
                                      ),
                                      width: getHorizontalSize(
                                        17.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 9,
                                      top: 15,
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "lbl_b_l_c".tr,
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
                          ),
                          Container(
                            height: getVerticalSize(
                              326.00,
                            ),
                            width: getHorizontalSize(
                              375.00,
                            ),
                            margin: getMargin(
                              top: 15,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin: getMargin(
                                      left: 16,
                                      right: 16,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Obx(
                                            () => ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return Container(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    247.00,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray50,
                                                  ),
                                                );
                                              },
                                              itemCount: controller
                                                  .browseModelObj
                                                  .value
                                                  .listuserpict5ItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                Listuserpict5ItemModel model =
                                                    controller
                                                            .browseModelObj
                                                            .value
                                                            .listuserpict5ItemList[
                                                        index];
                                                return Listuserpict5ItemWidget(
                                                  model,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            247.00,
                                          ),
                                          margin: getMargin(
                                            left: 10,
                                            top: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50,
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
                                    decoration:
                                        AppDecoration.outlineBluegray5012,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 11,
                                                    right: 11,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgHome24X20,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                        Container(
                                          margin: getMargin(
                                            left: 31,
                                            top: 8,
                                            bottom: 36,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 9,
                                                  right: 8,
                                                ),
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgTicket,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                            left: 37,
                                            top: 4,
                                            bottom: 35,
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
                                                  top: 2,
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
                                        Container(
                                          margin: getMargin(
                                            left: 34,
                                            top: 8,
                                            bottom: 35,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 14,
                                                  right: 14,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgNotification,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                            left: 28,
                                            top: 8,
                                            right: 18,
                                            bottom: 36,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 11,
                                                    right: 7,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgUser,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
