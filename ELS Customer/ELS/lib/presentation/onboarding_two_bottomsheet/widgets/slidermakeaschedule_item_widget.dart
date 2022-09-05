import '../controller/onboarding_two_controller.dart';
import '../models/slidermakeaschedule_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlidermakeascheduleItemWidget extends StatelessWidget {
  SlidermakeascheduleItemWidget(this.slidermakeascheduleItemModelObj);

  SlidermakeascheduleItemModel slidermakeascheduleItemModelObj;

  var controller = Get.find<OnboardingTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 7,
              right: 13,
            ),
            child: Text(
              "msg_t_l_ch_d_d_n".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRomanBold40.copyWith(),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: getHorizontalSize(
                307.00,
              ),
              margin: getMargin(
                top: 68,
              ),
              child: Text(
                "msg_ch_n_kho_ng_th".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtRobotoRomanRegular17.copyWith(
                  height: 1.29,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
