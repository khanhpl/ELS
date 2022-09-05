import '../controller/onboarding_three_controller.dart';
import '../models/sliderconnectwithlo_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderconnectwithloItemWidget extends StatelessWidget {
  SliderconnectwithloItemWidget(this.sliderconnectwithloItemModelObj);

  SliderconnectwithloItemModel sliderconnectwithloItemModelObj;

  var controller = Get.find<OnboardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 1,
                right: 1,
              ),
              child: Text(
                "msg_k_t_n_i_v_i_ng".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanBold40.copyWith(),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              301.00,
            ),
            margin: getMargin(
              top: 31,
            ),
            child: Text(
              "msg_lu_n_c_p_nh_t_m".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtRobotoRomanRegular17.copyWith(
                height: 1.29,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
