import '../controller/manage_work_news_one_controller.dart';
import '../models/listuserpict4_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listuserpict4ItemWidget extends StatelessWidget {
  Listuserpict4ItemWidget(this.listuserpict4ItemModelObj);

  Listuserpict4ItemModel listuserpict4ItemModelObj;

  var controller = Get.find<ManageWorkNewsOneController>();

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
                top: 13,
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
                          Text(
                            "lbl_tr_chuy_n".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanMedium15.copyWith(
                              height: 1.00,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                              bottom: 1,
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
                      top: 3,
                      right: 10,
                    ),
                    child: Text(
                      "msg_ng_nguy_n_v_n".tr,
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
                      top: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 5,
                          ),
                          child: Text(
                            "lbl_2_n_ng_tuy_n".tr,
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
                            left: 16,
                            top: 4,
                            right: 17,
                            bottom: 2,
                          ),
                          decoration: AppDecoration.txtFillGreen400.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder10,
                          ),
                          child: Text(
                            "lbl_ng".tr,
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
