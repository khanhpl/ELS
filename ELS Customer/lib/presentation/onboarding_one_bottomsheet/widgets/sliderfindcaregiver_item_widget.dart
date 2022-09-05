import '../controller/onboarding_one_controller.dart';
import '../models/sliderfindcaregiver_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderfindcaregiverItemWidget extends StatelessWidget {
  SliderfindcaregiverItemWidget(this.sliderfindcaregiverItemModelObj);

  SliderfindcaregiverItemModel sliderfindcaregiverItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: getHorizontalSize(
              296.00,
            ),
            child: Text(
              "msg_t_m_ki_m_xung".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRomanBold40.copyWith(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                292.00,
              ),
              margin: getMargin(
                left: 3,
                top: 21,
                right: 1,
              ),
              child: Text(
                "msg_kh_m_ph_nh_n_v".tr,
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
