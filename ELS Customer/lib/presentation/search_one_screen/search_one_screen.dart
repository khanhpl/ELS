import '../search_one_screen/widgets/listuserpict_item_widget.dart';
import 'controller/search_one_controller.dart';
import 'models/listuserpict_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchOneScreen extends GetWidget<SearchOneController> {
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          top: 8,
                          right: 30,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomSearchView(
                              width: 280,
                              focusNode: FocusNode(),
                              controller: controller.searchController,
                              hintText: "lbl_t_m_ki_m".tr,
                              prefix: Container(
                                margin: getMargin(
                                  left: 8,
                                  top: 11,
                                  right: 8,
                                  bottom: 11,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgSearch,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                minWidth: getSize(
                                  14.00,
                                ),
                                minHeight: getSize(
                                  14.00,
                                ),
                              ),
                              suffix: Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: controller.searchController.clear,
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                minWidth: getHorizontalSize(
                                  10.00,
                                ),
                                minHeight: getVerticalSize(
                                  10.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 8,
                                bottom: 8,
                              ),
                              child: Text(
                                "lbl_hu".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular17Gray700
                                    .copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.outlineBluegray50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: getMargin(
                              top: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "lbl_xu_t".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium15
                                                .copyWith(
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 37,
                                            top: 1,
                                          ),
                                          child: Text(
                                            "lbl_nh_n_vi_n".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular15Bluegray400
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
                                  height: getVerticalSize(
                                    2.00,
                                  ),
                                  width: getHorizontalSize(
                                    94.00,
                                  ),
                                  margin: getMargin(
                                    top: 13,
                                    right: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.purple900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                              bottom: 12,
                            ),
                            child: Text(
                              "lbl_g_i2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular15Bluegray400
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                              right: 30,
                              bottom: 12,
                            ),
                            child: Text(
                              "lbl_v_tr".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular15Bluegray400
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
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 16,
                        right: 61,
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
                          itemCount: controller.searchOneModelObj.value
                              .listuserpictItemList.length,
                          itemBuilder: (context, index) {
                            ListuserpictItemModel model = controller
                                .searchOneModelObj
                                .value
                                .listuserpictItemList[index];
                            return ListuserpictItemWidget(
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
                      left: 10,
                      top: 8,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 30,
                        right: 296,
                      ),
                      child: Text(
                        "lbl_g_n_y".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanBold17.copyWith(
                          height: 1.00,
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
                        right: 260,
                      ),
                      child: Text(
                        "lbl_nguy_n_th_a".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                          height: 1.00,
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
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 15,
                        right: 239,
                      ),
                      child: Text(
                        "lbl_12_quang_trung".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                          height: 1.00,
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
                      top: 11,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 15,
                        right: 224,
                      ),
                      child: Text(
                        "msg_23_2_phan_v_n_t".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                          height: 1.00,
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
                      top: 11,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray50,
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
