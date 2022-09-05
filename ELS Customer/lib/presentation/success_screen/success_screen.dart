import 'controller/success_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:els/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    margin: getMargin(
                      left: 31,
                      top: 40,
                      right: 31,
                    ),
                    variant: IconButtonVariant.FillGreen400,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgCheckmark20X20,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 31,
                      top: 22,
                      right: 31,
                    ),
                    child: Text(
                      "lbl_th_nh_c_ng".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanBold40Black900.copyWith(),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      275.00,
                    ),
                    margin: getMargin(
                      left: 31,
                      top: 10,
                      right: 31,
                    ),
                    child: Text(
                      "msg_c_m_n_qu_kh_c".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRobotoRomanRegular17Gray700.copyWith(
                        height: 1.29,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 31,
                      top: 24,
                      right: 31,
                    ),
                    decoration: AppDecoration.outlineBluegray5012.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 16,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: getMargin(
                                    top: 8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          left: 13,
                                          right: 13,
                                        ),
                                        padding: getPadding(
                                          left: 10,
                                          top: 23,
                                          right: 10,
                                          bottom: 22,
                                        ),
                                        decoration: AppDecoration.txtFillGray400
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder30,
                                        ),
                                        child: Text(
                                          "lbl_60_x_60".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoItalicThin13Bluegray400
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 13,
                                          top: 17,
                                          right: 12,
                                        ),
                                        child: Text(
                                          "lbl_tr_n_v_n_x".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRomanBold17
                                              .copyWith(
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 10,
                                          ),
                                          child: Text(
                                            "lbl_tr_chuy_n_c_ng".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15Gray700
                                                .copyWith(
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 65,
                                    bottom: 108,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(
                                      20.00,
                                    ),
                                    width: getSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 28,
                              right: 16,
                            ),
                            child: Text(
                              "msg_th_i_gian_v_ng".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular13Gray700
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 10,
                              right: 16,
                            ),
                            child: Text(
                              "msg_th_hai_24_th".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold17.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 5,
                              right: 16,
                            ),
                            child: Text(
                              "msg_8_00_sa_12_00".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium13.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 27,
                              right: 16,
                            ),
                            child: Text(
                              "lbl_a_ch".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular13Gray700
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 7,
                              right: 16,
                            ),
                            child: Text(
                              "msg_g_v_p_th_nh_p".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold17.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 5,
                              right: 16,
                              bottom: 27,
                            ),
                            child: Text(
                              "lbl_0_31_km".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium13.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 311,
                    text: "lbl_xem_chi_ti_t".tr,
                    margin: getMargin(
                      left: 31,
                      top: 43,
                      right: 31,
                      bottom: 20,
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
