import 'controller/sign_in_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/core/utils/validation_functions.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:els/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: getVerticalSize(768.00),
                            width: getHorizontalSize(375.00),
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      margin: getMargin(bottom: 10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(236.00),
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
                                                                      left: 88,
                                                                      top: 69,
                                                                      right: 88,
                                                                      bottom:
                                                                          69),
                                                                  child: Text(
                                                                      "lbl_375_x_280"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoItalicThin48
                                                                          .copyWith()))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  decoration:
                                                                      AppDecoration
                                                                          .gradientPurple90000Purple900,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 32,
                                                                                top: 77,
                                                                                right: 32),
                                                                            child: Text("lbl_ch_o_m_ng".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold40.copyWith())),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 32,
                                                                                top: 65,
                                                                                right: 32,
                                                                                bottom: 37),
                                                                            child: Text("msg_ng_nh_p_ti".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular17.copyWith(height: 1.00)))
                                                                      ])))
                                                        ]))),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .usernameController,
                                                hintText:
                                                    "msg_s_i_n_tho_i_e".tr,
                                                margin: getMargin(
                                                    left: 28,
                                                    top: 35,
                                                    right: 28),
                                                prefix: Container(
                                                    margin: getMargin(
                                                        right: 16, bottom: 15),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(16.00),
                                                        minHeight:
                                                            getSize(16.00)),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 33,
                                                        top: 24,
                                                        right: 33),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLock,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16.00),
                                                                  width: getHorizontalSize(
                                                                      14.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 17,
                                                                      bottom:
                                                                          2),
                                                              child: Text(
                                                                  "lbl_m_t_kh_u"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanRegular17Bluegray400
                                                                      .copyWith(
                                                                          height:
                                                                              1.00)))
                                                        ]))),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(311.00),
                                                margin: getMargin(
                                                    left: 28,
                                                    top: 14,
                                                    right: 28),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray50)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 42,
                                                        top: 24,
                                                        right: 42),
                                                    child: Text(
                                                        "lbl_qu_n_m_t_kh_u".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanRegular17Black900
                                                            .copyWith(
                                                                height:
                                                                    1.00)))),
                                            CustomButton(
                                                width: 311,
                                                text: "lbl_ng_nh_p2".tr,
                                                margin: getMargin(
                                                    left: 28,
                                                    top: 29,
                                                    right: 28)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28,
                                                    top: 27,
                                                    right: 28),
                                                child: Text(
                                                    "lbl_ho_c_s_d_ng".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular17Gray700
                                                        .copyWith(
                                                            height: 1.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28,
                                                    top: 25,
                                                    right: 23),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 147,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .continuewithGController,
                                                          hintText:
                                                              "lbl_google".tr,
                                                          variant: TextFormFieldVariant
                                                              .OutlineBlack9002a,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingTB16,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .RobotoMedium20,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          prefix: Container(
                                                              padding: getPadding(
                                                                  all: 1),
                                                              margin: getMargin(
                                                                  all: 15),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700),
                                                              child: CommonImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgGoogle)),
                                                          prefixConstraints:
                                                              BoxConstraints(
                                                                  minWidth:
                                                                      getSize(23.00),
                                                                  minHeight: getSize(23.00))),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapContinuewithF();
                                                          },
                                                          child: Container(
                                                              decoration: AppDecoration
                                                                  .fillBlueA400
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                15),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlueA400,
                                                                        child: Stack(
                                                                            children: [
                                                                              Align(alignment: Alignment.center, child: Padding(padding: getPadding(all: 1), child: CommonImageView(svgPath: ImageConstant.imgPath14, height: getVerticalSize(22.00), width: getHorizontalSize(23.00))))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                14,
                                                                            right:
                                                                                12,
                                                                            bottom:
                                                                                19),
                                                                        child: Text(
                                                                            "lbl_facebook"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRomanBold20.copyWith()))
                                                                  ])))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 28,
                                                    top: 95,
                                                    right: 28),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_kh_ng_c_t_i_kh2"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      17),
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.00)),
                                                      TextSpan(
                                                          text: "lbl_ng_k".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      17),
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.00)),
                                                      TextSpan(
                                                          text: ' ',
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      17),
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.00))
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ])))
                            ])))))));
  }

  onTapContinuewithF() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
