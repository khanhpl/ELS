import '../controller/categories_controller.dart';
import '../models/list343x122_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List343x122ItemWidget extends StatelessWidget {
  List343x122ItemWidget(this.list343x122ItemModelObj);

  List343x122ItemModel list343x122ItemModelObj;

  var controller = Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        122.00,
      ),
      width: getHorizontalSize(
        343.00,
      ),
      margin: getMargin(
        top: 4.0,
        bottom: 4.0,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                all: 40,
              ),
              child: Text(
                "lbl_343_x_122".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoItalicThin36.copyWith(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: AppDecoration.gradientPurple90000Purple900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 36,
                      right: 40,
                    ),
                    child: Text(
                      "msg_ch_m_s_c_c_nh".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanBold28.copyWith(),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 4,
                      right: 40,
                      bottom: 38,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_746_nh_n_vi_n".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular13WhiteA700
                                .copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            3.00,
                          ),
                          width: getSize(
                            3.00,
                          ),
                          margin: getMargin(
                            left: 21,
                            top: 8,
                            bottom: 3,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.50,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_ch_t_20000_g".tr,
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
          ),
        ],
      ),
    );
  }
}
