import '../favorites_screen/widgets/grid64xsixtyfour_item_widget.dart';
import 'controller/favorites_controller.dart';
import 'models/grid64xsixtyfour_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends GetWidget<FavoritesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          decoration: AppDecoration.outlineBluegray50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    margin:
                                        getMargin(left: 9, top: 11, bottom: 12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapImgArrowleft();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 10),
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
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 7, top: 17),
                                                  child: Text(
                                                      "lbl_y_u_th_ch".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold34
                                                          .copyWith(
                                                              height: 1.00))))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 12, right: 16, bottom: 65),
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgSearchBlack900,
                                        height: getSize(19.00),
                                        width: getSize(19.00)))
                              ])),
                      Container(
                          decoration: AppDecoration.outlineBluegray50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(left: 46),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 14, bottom: 14),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgSort,
                                                  height: getSize(16.00),
                                                  width: getSize(16.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 19,
                                                  top: 12,
                                                  bottom: 12),
                                              child: Text("lbl_s_p_x_p".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15Gray700
                                                      .copyWith(height: 1.00))),
                                          Container(
                                              height: getVerticalSize(44.00),
                                              width: getHorizontalSize(1.00),
                                              margin: getMargin(left: 54),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.bluegray50))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 60, top: 15, bottom: 12),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 4),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgFilter12X14,
                                                  height:
                                                      getVerticalSize(12.00),
                                                  width: getHorizontalSize(
                                                      14.00))),
                                          Padding(
                                              padding: getPadding(left: 11),
                                              child: Text("lbl_b_l_c".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15Gray700
                                                      .copyWith(height: 1.00)))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 16, right: 15, bottom: 106),
                              child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent:
                                              getVerticalSize(159.00),
                                          crossAxisCount: 3,
                                          mainAxisSpacing:
                                              getHorizontalSize(16.00),
                                          crossAxisSpacing:
                                              getHorizontalSize(16.00)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.favoritesModelObj.value
                                      .grid64xsixtyfourItemList.length,
                                  itemBuilder: (context, index) {
                                    Grid64xsixtyfourItemModel model = controller
                                        .favoritesModelObj
                                        .value
                                        .grid64xsixtyfourItemList[index];
                                    return Grid64xsixtyfourItemWidget(model);
                                  }))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
