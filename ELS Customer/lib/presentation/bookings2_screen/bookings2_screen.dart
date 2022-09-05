import 'controller/bookings2_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/presentation/bookings1_page/bookings1_page.dart';
import 'package:els/presentation/bookings_page/bookings_page.dart';
import 'package:els/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class Bookings2Screen extends GetWidget<Bookings2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                772.00,
              ),
              width: getHorizontalSize(
                375.00,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: AppDecoration.fillWhiteA700,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 12,
                                      right: 16,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSearchBlack900,
                                      height: getSize(
                                        19.00,
                                      ),
                                      width: getSize(
                                        19.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 21,
                                      right: 16,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_l_ch_tr_nh".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanBold34
                                          .copyWith(
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              375.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              boxShadow: [
                                BoxShadow(
                                  color: ColorConstant.bluegray50,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    1,
                                  ),
                                ),
                              ],
                            ),
                            child: TabBar(
                              controller: controller.segmentController,
                              tabs: [
                                Tab(
                                  text: "lbl_s_p_di_n_ra".tr,
                                ),
                                Tab(
                                  text: "lbl_ang_di_n_ra".tr,
                                ),
                              ],
                              labelColor: ColorConstant.black900,
                              unselectedLabelColor: ColorConstant.bluegray400,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              632.00,
                            ),
                            child: TabBarView(
                              controller: controller.segmentController,
                              children: [
                                BookingsPage(),
                                Bookings1Page(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomFloatingButton(
                    height: 55,
                    width: 55,
                    margin: getMargin(
                      left: 30,
                      top: 105,
                      right: 30,
                      bottom: 105,
                    ),
                    variant: FloatingButtonVariant.OutlineBluegray100,
                    alignment: Alignment.bottomRight,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgGlobe55X55,
                      height: getVerticalSize(
                        27.50,
                      ),
                      width: getHorizontalSize(
                        27.50,
                      ),
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
