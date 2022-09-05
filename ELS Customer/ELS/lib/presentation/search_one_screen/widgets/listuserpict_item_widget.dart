import '../controller/search_one_controller.dart';
import '../models/listuserpict_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListuserpictItemWidget extends StatelessWidget {
  ListuserpictItemWidget(this.listuserpictItemModelObj);

  ListuserpictItemModel listuserpictItemModelObj;

  var controller = Get.find<SearchOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          top: 8.5,
          right: 51,
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
                top: 11,
                bottom: 10,
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
                        Text(
                          "lbl_phan_l_u_k".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium15.copyWith(
                            height: 1.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 2,
                            bottom: 1,
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
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 5,
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 3,
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
                              top: 1,
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
                              top: 8,
                              bottom: 5,
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
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_n_u_n".tr,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        150.00,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 6,
                        bottom: 1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              top: 1,
                            ),
                            child: Text(
                              "lbl_15000_gi".tr,
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
