import '../controller/browse_controller.dart';
import '../models/banner01_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Banner01ItemWidget extends StatelessWidget {
  Banner01ItemWidget(this.banner01ItemModelObj);

  Banner01ItemModel banner01ItemModelObj;

  var controller = Get.find<BrowseController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 16,
        ),
        decoration: AppDecoration.fillGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                left: 64,
                top: 197,
                right: 63,
              ),
              child: Text(
                "lbl_326_x_448".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoItalicThin48.copyWith(),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  326.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                decoration: AppDecoration.gradientPurple90000Purple900.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      width: 35,
                      text: "lbl_1_52".tr,
                      margin: getMargin(
                        left: 16,
                        right: 16,
                      ),
                      variant: ButtonVariant.FillBlack90087,
                      padding: ButtonPadding.PaddingAll4,
                      fontStyle: ButtonFontStyle.RobotoRomanRegular13,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 8,
                        right: 16,
                      ),
                      child: Text(
                        "msg_c_bi_t_d_nh_c".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular17.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(
                          294.00,
                        ),
                        margin: getMargin(
                          left: 16,
                          top: 12,
                          right: 16,
                        ),
                        child: Text(
                          "msg_gi_m_gi_50_ch".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanBold30.copyWith(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 22,
                        right: 16,
                        bottom: 24,
                      ),
                      child: Text(
                        "msg_ch_n_nh_n_vi_n".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoItalicThin20Pink300.copyWith(
                          height: 1.00,
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
    );
  }
}
