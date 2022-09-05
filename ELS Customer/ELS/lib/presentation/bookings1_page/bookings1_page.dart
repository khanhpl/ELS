import '../bookings1_page/widgets/listuserpict2_item_widget.dart';
import 'controller/bookings1_controller.dart';
import 'models/bookings1_model.dart';
import 'models/listuserpict2_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Bookings1Page extends StatelessWidget {
  Bookings1Controller controller =
      Get.put(Bookings1Controller(Bookings1Model().obs));

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
                  left: 8,
                  right: 10,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          263.00,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray50,
                        ),
                      );
                    },
                    itemCount: controller
                        .bookings1ModelObj.value.listuserpict2ItemList.length,
                    itemBuilder: (context, index) {
                      Listuserpict2ItemModel model = controller
                          .bookings1ModelObj.value.listuserpict2ItemList[index];
                      return Listuserpict2ItemWidget(
                        model,
                      );
                    },
                  ),
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
                left: 104,
                top: 8,
                right: 8,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.bluegray50,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: getMargin(
                  top: 266,
                ),
                decoration: AppDecoration.outlineBluegray5012,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: getMargin(
                        left: 19,
                        top: 8,
                        bottom: 36,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                                right: 11,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgHome,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_trang_ch".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRobotoRomanRegular10Bluegray400
                                    .copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 8,
                        bottom: 36,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 9,
                              right: 8,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgTicket24X23,
                              height: getVerticalSize(
                                24.00,
                              ),
                              width: getHorizontalSize(
                                23.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_l_ch_tr_nh".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular10Purple900
                                    .copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 6,
                        bottom: 35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                            width: 30,
                            text: "lbl".tr,
                            margin: getMargin(
                              left: 3,
                              right: 3,
                            ),
                            variant: ButtonVariant.FillGray400,
                            shape: ButtonShape.RoundedBorder15,
                            padding: ButtonPadding.PaddingAll4,
                            fontStyle: ButtonFontStyle.PoppinsBold22,
                            alignment: Alignment.center,
                          ),
                          Text(
                            "lbl_t_o_m_i".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular10Bluegray400
                                .copyWith(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 8,
                        bottom: 35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 14,
                              right: 14,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgNotification,
                              height: getVerticalSize(
                                24.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_th_ng_b_o".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRobotoRomanRegular10Bluegray400
                                    .copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 8,
                        right: 18,
                        bottom: 36,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                                right: 7,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgUser,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_t_i_kho_n".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRobotoRomanRegular10Bluegray400
                                    .copyWith(),
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
      ),
    );
  }
}
