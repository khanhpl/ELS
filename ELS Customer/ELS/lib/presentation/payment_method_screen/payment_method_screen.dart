import '../payment_method_screen/widgets/listexpires_one_item_widget.dart';
import '../payment_method_screen/widgets/sliderhologram_item_widget.dart';
import 'controller/payment_method_controller.dart';
import 'models/listexpires_one_item_model.dart';
import 'models/sliderhologram_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: size.width,
                                    margin:
                                        getMargin(left: 9, top: 11, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftBlack900,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      12.00))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 2),
                                              child: Text("lbl_th_m_m_i".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular17Gray700
                                                      .copyWith()))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 9, top: 22, right: 12, bottom: 8),
                                    child: Text("msg_ph_ng_th_c_tha".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanBold33
                                            .copyWith(height: 1.00)))
                              ])),
                      Container(
                          height: getVerticalSize(54.00),
                          width: getHorizontalSize(375.00),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration:
                                            AppDecoration.outlineBluegray50,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 13,
                                                      bottom: 12),
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 6,
                                                      right: 11,
                                                      bottom: 9),
                                                  decoration: AppDecoration
                                                      .txtFillPurple900
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder12),
                                                  child: Text("lbl_visa".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular13WhiteA700
                                                          .copyWith(
                                                              height: 1.00))),
                                              Container(
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 13,
                                                      bottom: 12),
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 6,
                                                      bottom: 9),
                                                  decoration: AppDecoration
                                                      .txtFillBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder12),
                                                  child: Text(
                                                      "lbl_mastercard".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular13Gray700
                                                          .copyWith(
                                                              height: 1.00))),
                                              Container(
                                                  margin: getMargin(
                                                      left: 7,
                                                      top: 13,
                                                      bottom: 12),
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 8,
                                                      right: 13,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .txtFillBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder12),
                                                  child: Text("lbl_paypal".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular13Gray700
                                                          .copyWith(
                                                              height: 1.00))),
                                              Container(
                                                  margin: getMargin(
                                                      left: 7,
                                                      top: 13,
                                                      right: 62,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fillBluegray50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder14),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 8,
                                                                bottom: 7),
                                                            child: Text(
                                                                "lbl_applepay"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular13Gray700
                                                                    .copyWith(
                                                                        height:
                                                                            1.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 33,
                                                                top: 6,
                                                                bottom: 9),
                                                            child: Text(
                                                                "lbl_momo_w".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular13Gray700
                                                                    .copyWith(
                                                                        height:
                                                                            1.00)))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 10, top: 12, bottom: 12),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgBackground,
                                            height: getVerticalSize(29.00),
                                            width: getHorizontalSize(54.00))))
                              ])),
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillGray50,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 16, right: 16),
                                    child: Obx(() => CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: getVerticalSize(206.00),
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              controller.silderIndex.value =
                                                  index;
                                            }),
                                        itemCount: controller
                                            .paymentMethodModelObj
                                            .value
                                            .sliderhologramItemList
                                            .length,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          SliderhologramItemModel model =
                                              controller
                                                      .paymentMethodModelObj
                                                      .value
                                                      .sliderhologramItemList[
                                                  index];
                                          return SliderhologramItemWidget(
                                              model);
                                        }))),
                                Obx(() => Container(
                                    height: getVerticalSize(7.00),
                                    margin: getMargin(all: 16),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex:
                                            controller.silderIndex.value,
                                        count: controller
                                            .paymentMethodModelObj
                                            .value
                                            .sliderhologramItemList
                                            .length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                ColorConstant.purple900,
                                            dotColor: ColorConstant.gray7007e,
                                            dotHeight: getVerticalSize(7.00),
                                            dotWidth:
                                                getHorizontalSize(7.00)))))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 16, top: 24, right: 16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("lbl_s_th".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular17Black900
                                                          .copyWith(
                                                              height: 1.00))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "msg_8364_9375_0930".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular17Bluegray400
                                                          .copyWith(
                                                              height: 1.00)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(343.00),
                                        margin: getMargin(top: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 12, right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_ch_th".tr,
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
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_le_thanh_b".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular17Bluegray400
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(343.00),
                                        margin: getMargin(top: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(44.00),
                                            width: getHorizontalSize(342.00),
                                            child: Obx(() => ListView.builder(
                                                padding: getPadding(
                                                    top: 13, right: 1),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .paymentMethodModelObj
                                                    .value
                                                    .listexpiresOneItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListexpiresOneItemModel
                                                      model = controller
                                                          .paymentMethodModelObj
                                                          .value
                                                          .listexpiresOneItemList[index];
                                                  return ListexpiresOneItemWidget(
                                                      model);
                                                })))),
                                    Padding(
                                        padding: getPadding(top: 24, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomIconButton(
                                                  height: 20,
                                                  width: 20,
                                                  variant: IconButtonVariant
                                                      .FillGreen400,
                                                  shape: IconButtonShape
                                                      .CircleBorder10,
                                                  padding: IconButtonPadding
                                                      .PaddingAll5,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark20X20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, bottom: 5),
                                                  child: Text(
                                                      "msg_l_u_th_ng_tin_t".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15Gray700
                                                          .copyWith(
                                                              height: 1.00)))
                                            ]))
                                  ]))),
                      CustomButton(
                          width: 343,
                          text: "lbl_l_u".tr,
                          margin: getMargin(
                              left: 16, top: 65, right: 16, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
