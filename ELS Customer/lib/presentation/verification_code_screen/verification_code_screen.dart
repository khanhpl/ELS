import 'controller/verification_code_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends GetWidget<VerificationCodeController> {
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
                  CustomButton(
                    width: 375,
                    text: "msg_x_c_th_c_s_i".tr,
                    variant: ButtonVariant.OutlineBluegray50,
                    shape: ButtonShape.Square,
                    padding: ButtonPadding.PaddingAll21,
                    fontStyle: ButtonFontStyle.RobotoItalicThin17Black901,
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    width: getHorizontalSize(
                      287.00,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 43,
                      right: 16,
                    ),
                    child: Text(
                      "msg_ch_ng_t_i_g".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                        height: 1.29,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        top: 40,
                      ),
                      decoration: AppDecoration.outlineBluegray5012,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 20,
                              bottom: 6,
                            ),
                            child: Text(
                              "lbl_m_x_c_th_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular17Black900
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 26,
                              top: 21,
                              bottom: 5,
                            ),
                            child: Text(
                              "lbl_nh_p_m".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular17Gray400
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 343,
                    text: "lbl_x_c_th_c".tr,
                    margin: getMargin(
                      left: 16,
                      top: 24,
                      right: 16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 27,
                      right: 16,
                      bottom: 436,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_g_i_l_i".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular17Black900
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_c_n_1_20_ph_t".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular17Bluegray400
                                .copyWith(
                              height: 1.00,
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
    );
  }
}
