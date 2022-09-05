import '../controller/favorites_controller.dart';
import '../models/grid64xsixtyfour_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Grid64xsixtyfourItemWidget extends StatelessWidget {
  Grid64xsixtyfourItemWidget(this.grid64xsixtyfourItemModelObj);

  Grid64xsixtyfourItemModel grid64xsixtyfourItemModelObj;

  var controller = Get.find<FavoritesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBluegray5012.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getHorizontalSize(
                64.00,
              ),
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
              ),
              decoration: AppDecoration.fillGray400.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder32,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 11,
                      top: 24,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_64_x_64".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoItalicThin14.copyWith(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getSize(
                        20.00,
                      ),
                      width: getSize(
                        20.00,
                      ),
                      margin: getMargin(
                        left: 10,
                        top: 4,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.whiteA700,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.bluegray100,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 10,
                                  right: 5,
                                  bottom: 5,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: getVerticalSize(
                                    9.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                47.00,
              ),
              margin: getMargin(
                left: 20,
                top: 8,
                right: 20,
              ),
              child: Text(
                "lbl_h_th_thanh_a".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtRobotoRomanRegular13Black900.copyWith(
                  height: 1.54,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 20,
                top: 7,
                right: 20,
                bottom: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgStar12X12,
                      height: getSize(
                        12.00,
                      ),
                      width: getSize(
                        12.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                    ),
                    child: Text(
                      "lbl_3_52".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtRobotoRomanRegular13Bluegray400.copyWith(
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
    );
  }
}
