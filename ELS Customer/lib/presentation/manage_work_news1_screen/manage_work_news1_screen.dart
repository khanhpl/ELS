import 'controller/manage_work_news1_controller.dart';
import 'package:els/core/app_export.dart';
import 'package:els/presentation/manage_work_news_one_page/manage_work_news_one_page.dart';
import 'package:els/presentation/manage_work_news_page/manage_work_news_page.dart';
import 'package:els/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class ManageWorkNews1Screen extends GetWidget<ManageWorkNews1Controller> {
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
                696.00,
              ),
              width: getHorizontalSize(
                375.00,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: getMargin(
                        bottom: 10,
                      ),
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
                                      top: 22,
                                      right: 16,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "lbl_tin_ng".tr,
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
                                  text: "lbl_ang_ng".tr,
                                ),
                                Tab(
                                  text: "lbl_qu_h_n2".tr,
                                ),
                              ],
                              labelColor: ColorConstant.black900,
                              unselectedLabelColor: ColorConstant.bluegray400,
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 7,
                              top: 36,
                              right: 9,
                            ),
                            height: getVerticalSize(
                              89.00,
                            ),
                            child: TabBarView(
                              controller: controller.segmentController,
                              children: [
                                ManageWorkNewsOnePage(),
                                ManageWorkNewsPage(),
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
                      left: 159,
                      top: 10,
                      right: 159,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgPlus55X55,
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
