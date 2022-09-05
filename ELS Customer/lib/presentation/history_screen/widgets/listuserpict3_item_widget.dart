import '../controller/history_controller.dart';
import '../models/listuserpict3_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listuserpict3ItemWidget extends StatelessWidget {
  Listuserpict3ItemWidget(this.listuserpict3ItemModelObj);

  Listuserpict3ItemModel listuserpict3ItemModelObj;

  var controller = Get.find<HistoryController>();

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                bottom: 25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
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
                  Container(
                    width: getHorizontalSize(
                      247.00,
                    ),
                    margin: getMargin(
                      top: 9,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_th_hai_24_th".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Black900
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            left: 5,
                            top: 3,
                            bottom: 3,
                          ),
                          decoration: AppDecoration.txtFillGreen400.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder10,
                          ),
                          child: Text(
                            "lbl_ho_n_th_nh".tr,
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
