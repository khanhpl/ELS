import 'controller/forgot_password_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              child: Container(
                                  decoration: AppDecoration.outlineBluegray50,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 9,
                                                    top: 11,
                                                    bottom: 12),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleftBlack900,
                                                    height:
                                                        getVerticalSize(21.00),
                                                    width: getHorizontalSize(
                                                        12.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 112, top: 12, bottom: 12),
                                            child: Text("lbl_qu_n_m_t_kh_u2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoItalicThin17
                                                    .copyWith()))
                                      ])))),
                      Container(
                          width: getHorizontalSize(258.00),
                          margin: getMargin(left: 32, top: 21, right: 32),
                          child: Text("msg_nh_p_s_i_n_th".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRomanRegular17Black900
                                  .copyWith(height: 1.29))),
                      Container(
                          margin: getMargin(left: 32, top: 22, right: 32),
                          padding: getPadding(left: 30, top: 14, right: 30),
                          decoration: AppDecoration.txtOutlineBluegray50,
                          child: Text("msg_nh_p_s_i_n_th2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular17Gray400
                                  .copyWith(height: 1.00))),
                      CustomButton(
                          width: 311,
                          text: "lbl_g_i".tr,
                          margin: getMargin(
                              left: 32, top: 24, right: 32, bottom: 20))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
