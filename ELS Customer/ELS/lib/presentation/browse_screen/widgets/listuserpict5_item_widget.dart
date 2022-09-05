import '../controller/browse_controller.dart';
import '../models/listuserpict5_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listuserpict5ItemWidget extends StatelessWidget {
  Listuserpict5ItemWidget(this.listuserpict5ItemModelObj);

  Listuserpict5ItemModel listuserpict5ItemModelObj;

  var controller = Get.find<BrowseController>();

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
                bottom: 11,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_nguy_n_v_n_b".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanMedium15.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 9,
                            top: 4,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCheckmark,
                            height: getSize(
                              12.00,
                            ),
                            width: getSize(
                              12.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgLocation16X13,
                            height: getVerticalSize(
                              12.00,
                            ),
                            width: getHorizontalSize(
                              10.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_0_31_km".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Gray700
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            2.00,
                          ),
                          width: getSize(
                            2.00,
                          ),
                          margin: getMargin(
                            left: 38,
                            top: 6,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray400,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                            top: 1,
                          ),
                          child: Text(
                            "lbl_tr_chuy_n_c_ng".tr,
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
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 5,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMinimize,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              54.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_122".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Gray700
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            2.00,
                          ),
                          width: getSize(
                            2.00,
                          ),
                          margin: getMargin(
                            left: 5,
                            top: 6,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray400,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                            top: 1,
                          ),
                          child: Text(
                            "lbl_48000_gi".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Black900
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
            Padding(
              padding: getPadding(
                left: 25,
                top: 31,
                bottom: 31,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgContrast,
                height: getVerticalSize(
                  18.00,
                ),
                width: getHorizontalSize(
                  20.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
