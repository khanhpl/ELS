import 'controller/manage_work_news_controller.dart';
import 'models/manage_work_news_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ManageWorkNewsPage extends StatelessWidget {
  ManageWorkNewsController controller =
      Get.put(ManageWorkNewsController(ManageWorkNewsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "lbl_tr_chuy_n".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanMedium15
                                        .copyWith(
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
                                      style: AppStyle
                                          .txtRobotoRomanRegular13Gray700
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
                              style: AppStyle.txtRobotoRomanRegular13Black900
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                left: 10,
                                top: 5,
                              ),
                              padding: getPadding(
                                left: 15,
                                top: 4,
                                right: 17,
                                bottom: 2,
                              ),
                              decoration: AppDecoration.txtFillGray400.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder10,
                              ),
                              child: Text(
                                "lbl_qu_h_n".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular13WhiteA700
                                    .copyWith(
                                  height: 1.00,
                                ),
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
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                263.00,
              ),
              margin: getMargin(
                left: 10,
                top: 8,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.bluegray50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
