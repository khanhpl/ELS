import '../controller/connect_controller.dart';
import '../models/list45xfortyfive_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List45xfortyfiveItemWidget extends StatelessWidget {
  List45xfortyfiveItemWidget(this.list45xfortyfiveItemModelObj);

  List45xfortyfiveItemModel list45xfortyfiveItemModelObj;

  var controller = Get.find<ConnectController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: AppDecoration.fillGray400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder22,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 17,
                    right: 8,
                  ),
                  child: Text(
                    "lbl_45_x_45".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoItalicThin10.copyWith(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getSize(
                      8.00,
                    ),
                    width: getSize(
                      8.00,
                    ),
                    margin: getMargin(
                      left: 35,
                      top: 7,
                      right: 2,
                      bottom: 2,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.green400,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          4.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.whiteA700,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 6,
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
                      280.00,
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
                            top: 1,
                          ),
                          child: Text(
                            "lbl_h_th_thanh_a".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanMedium15.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_11_20_sa".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13Bluegray401
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    283.00,
                  ),
                  margin: getMargin(
                    top: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 8,
                        ),
                        child: Text(
                          "msg_ch_c_may_m_n_v".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular13Bluegray401
                              .copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 1,
                        ),
                        padding: getPadding(
                          left: 6,
                          top: 2,
                          right: 7,
                          bottom: 4,
                        ),
                        decoration: AppDecoration.txtFillPurple900.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder10,
                        ),
                        child: Text(
                          "lbl_3".tr,
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
    );
  }
}
