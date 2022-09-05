import '../notifications_screen/widgets/listbarbaramichell_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/listbarbaramichell_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 16,
                            top: 14,
                            bottom: 8,
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
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFilter,
                                  height: getVerticalSize(
                                    16.00,
                                  ),
                                  width: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 23,
                                ),
                                child: Text(
                                  "lbl_th_ng_b_o".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold34.copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                            right: 16,
                            bottom: 72,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgIconmore,
                            height: getVerticalSize(
                              5.00,
                            ),
                            width: getHorizontalSize(
                              20.00,
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
                        left: 16,
                        top: 16,
                        right: 16,
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
                                359.00,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            );
                          },
                          itemCount: controller.notificationsModelObj.value
                              .listbarbaramichellItemList.length,
                          itemBuilder: (context, index) {
                            ListbarbaramichellItemModel model = controller
                                .notificationsModelObj
                                .value
                                .listbarbaramichellItemList[index];
                            return ListbarbaramichellItemWidget(
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
                      359.00,
                    ),
                    margin: getMargin(
                      left: 10,
                      top: 18,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray50,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 19,
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
                            top: 9,
                            bottom: 35,
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
                                  svgPath: ImageConstant.imgTicket,
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
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            75.00,
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 34,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 8,
                                    right: 25,
                                    bottom: 10,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgLightbulb23X24,
                                    height: getVerticalSize(
                                      23.00,
                                    ),
                                    width: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: getMargin(
                                    left: 19,
                                    top: 10,
                                    right: 19,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        fontStyle:
                                            ButtonFontStyle.PoppinsBold22,
                                        alignment: Alignment.center,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_t_o_m_i".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanRegular10Bluegray400
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                  svgPath: ImageConstant.imgNotification24X20,
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
                                        .txtRobotoRomanRegular10Purple900
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
