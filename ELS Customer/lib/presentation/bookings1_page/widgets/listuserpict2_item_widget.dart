import '../controller/bookings1_controller.dart';
import '../models/listuserpict2_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listuserpict2ItemWidget extends StatelessWidget {
  Listuserpict2ItemWidget(this.listuserpict2ItemModelObj);

  Listuserpict2ItemModel listuserpict2ItemModelObj;

  var controller = Get.find<Bookings1Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          top: 8.5,
          bottom: 8.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: getPadding(
                left: 19,
                top: 30,
                right: 18,
                bottom: 30,
              ),
              decoration: AppDecoration.txtFillGray400.copyWith(
                borderRadius: BorderRadiusStyle.txtCircleBorder40,
              ),
              child: Text(
                "lbl_80_x_80".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoItalicThin14.copyWith(),
              ),
            ),
            Container(
              margin: getMargin(
                left: 16,
                top: 10,
                bottom: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        244.00,
                      ),
                      margin: getMargin(
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_tr_n_v_n_x".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium15.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "lbl_30_ph_t_tr_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular13Gray700
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                      right: 10,
                    ),
                    child: Text(
                      "msg_th_hai_24_th".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular13Black900.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      247.00,
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_8_00_sa".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Gray700
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 6,
                          ),
                          decoration: AppDecoration.txtFillGreen400.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder10,
                          ),
                          child: Text(
                            "lbl_n2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13WhiteA700
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
          ],
        ),
      ),
    );
  }
}
