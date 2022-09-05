import '../manage_work_news_one_page/widgets/listuserpict4_item_widget.dart';
import 'controller/manage_work_news_one_controller.dart';
import 'models/listuserpict4_item_model.dart';
import 'models/manage_work_news_one_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ManageWorkNewsOnePage extends StatelessWidget {
  ManageWorkNewsOneController controller =
      Get.put(ManageWorkNewsOneController(ManageWorkNewsOneModel().obs));

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
                    itemCount: controller.manageWorkNewsOneModelObj.value
                        .listuserpict4ItemList.length,
                    itemBuilder: (context, index) {
                      Listuserpict4ItemModel model = controller
                          .manageWorkNewsOneModelObj
                          .value
                          .listuserpict4ItemList[index];
                      return Listuserpict4ItemWidget(
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
          ],
        ),
      ),
    );
  }
}
