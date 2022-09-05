import '../controller/notifications_controller.dart';
import '../models/listbarbaramichell_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbarbaramichellItemWidget extends StatelessWidget {
  ListbarbaramichellItemWidget(this.listbarbaramichellItemModelObj);

  ListbarbaramichellItemModel listbarbaramichellItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 17.5,
          bottom: 17.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_l_th_g".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w100,
                                height: 1.00,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                            TextSpan(
                              text: "msg_x_c_nh_n_y_u".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.00,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgClock,
                            height: getSize(
                              14.00,
                            ),
                            width: getSize(
                              14.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_10_00_ch".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Bluegray400
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
            Container(
              margin: getMargin(
                left: 51,
                top: 9,
                bottom: 6,
              ),
              padding: getPadding(
                left: 8,
                top: 17,
                right: 8,
                bottom: 17,
              ),
              decoration: AppDecoration.txtFillGray400.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder22,
              ),
              child: Text(
                "lbl_45_x_45".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoItalicThin10.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
