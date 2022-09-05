import '../connect_screen/widgets/list45xfortyfive_item_widget.dart';
import 'controller/connect_controller.dart';
import 'models/list45xfortyfive_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class ConnectScreen extends GetWidget<ConnectController> {
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
                                top: 17,
                                right: 16,
                                bottom: 13,
                              ),
                              child: Text(
                                "lbl_tin_nh_n".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanBold34.copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      right: 15,
                      bottom: 107,
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
                              298.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray50,
                            ),
                          );
                        },
                        itemCount: controller.connectModelObj.value
                            .list45xfortyfiveItemList.length,
                        itemBuilder: (context, index) {
                          List45xfortyfiveItemModel model = controller
                              .connectModelObj
                              .value
                              .list45xfortyfiveItemList[index];
                          return List45xfortyfiveItemWidget(
                            model,
                          );
                        },
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
