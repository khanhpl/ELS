import '../categories_screen/widgets/list343x122_item_widget.dart';
import 'controller/categories_controller.dart';
import 'models/list343x122_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        margin: getMargin(
                                            left: 9, top: 11, bottom: 8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapImgArrowleft();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 10),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleftBlack900,
                                                              height:
                                                                  getVerticalSize(
                                                                      21.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      12.00))))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 7, top: 21),
                                                      child: Text(
                                                          "lbl_d_ch_v".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold34
                                                              .copyWith(
                                                                  height:
                                                                      1.00))))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 19, right: 16, bottom: 72),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgIconmore,
                                            height: getVerticalSize(5.00),
                                            width: getHorizontalSize(20.00)))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 8, right: 16, bottom: 50),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.categoriesModelObj.value
                                  .list343x122ItemList.length,
                              itemBuilder: (context, index) {
                                List343x122ItemModel model = controller
                                    .categoriesModelObj
                                    .value
                                    .list343x122ItemList[index];
                                return List343x122ItemWidget(model);
                              })))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
