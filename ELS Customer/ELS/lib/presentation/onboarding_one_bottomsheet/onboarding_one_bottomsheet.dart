import '../onboarding_one_bottomsheet/widgets/sliderfindcaregiver_item_widget.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/sliderfindcaregiver_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:els/core/app_export.dart';
import 'package:els/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneBottomsheet extends StatelessWidget {
  OnboardingOneBottomsheet(this.controller);

  OnboardingOneController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                decoration: AppDecoration.gradientPurple90000Purple900,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 32,
                        top: 35,
                        right: 32,
                      ),
                      child: Obx(
                        () => CarouselSlider.builder(
                          options: CarouselOptions(
                            height: getVerticalSize(
                              173.00,
                            ),
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              controller.silderIndex.value = index;
                            },
                          ),
                          itemCount: controller.onboardingOneModelObj.value
                              .sliderfindcaregiverItemList.length,
                          itemBuilder: (context, index, realIndex) {
                            SliderfindcaregiverItemModel model = controller
                                .onboardingOneModelObj
                                .value
                                .sliderfindcaregiverItemList[index];
                            return SliderfindcaregiverItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                    Obx(
                      () => Container(
                        height: getVerticalSize(
                          7.00,
                        ),
                        margin: getMargin(
                          left: 32,
                          top: 18,
                          right: 32,
                        ),
                        child: AnimatedSmoothIndicator(
                          activeIndex: controller.silderIndex.value,
                          count: controller.onboardingOneModelObj.value
                              .sliderfindcaregiverItemList.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: ColorConstant.whiteA700,
                            dotColor: ColorConstant.whiteA7007e,
                            dotHeight: getVerticalSize(
                              7.00,
                            ),
                            dotWidth: getHorizontalSize(
                              7.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 32,
                        top: 116,
                        right: 32,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomButton(
                            width: 147,
                            text: "lbl_ng_k".tr,
                            variant: ButtonVariant.FillPink300,
                          ),
                          CustomButton(
                            width: 147,
                            text: "lbl_ng_nh_p".tr,
                            margin: getMargin(
                              left: 16,
                            ),
                            variant: ButtonVariant.OutlineWhiteA700,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        290.00,
                      ),
                      margin: getMargin(
                        left: 32,
                        top: 40,
                        right: 32,
                        bottom: 20,
                      ),
                      child: Text(
                        "msg_b_ng_c_ch_tham".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtRobotoRomanRegular13.copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
