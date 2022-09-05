import '../controller/schedule_controller.dart';
import '../models/listtwentysix_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtwentysixItemWidget extends StatelessWidget {
  ListtwentysixItemWidget(this.listtwentysixItemModelObj);

  ListtwentysixItemModel listtwentysixItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: getPadding(
          top: 10.7699965,
          right: 6,
          bottom: 10.7699965,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Text(
                "lbl_26".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Gray400.copyWith(
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 33,
                bottom: 1,
              ),
              child: Text(
                "lbl_27".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Gray400.copyWith(
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 31,
                top: 1,
              ),
              child: Text(
                "lbl_28".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Gray400.copyWith(
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 33,
                top: 1,
                bottom: 1,
              ),
              child: Text(
                "lbl_29".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Gray400.copyWith(
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 30,
                top: 1,
              ),
              child: Text(
                "lbl_30".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Gray400.copyWith(
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 40,
                top: 1,
                bottom: 1,
              ),
              child: Text(
                "lbl_12".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 45,
                bottom: 1,
              ),
              child: Text(
                "lbl_2".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
