import 'package:els_cus/core/utils/color_constant.dart';
import 'package:els_cus/core/utils/image_constant.dart';
import 'package:els_cus/core/utils/math_utils.dart';
import 'package:els_cus/resources/widgets/common_image_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OnboardingBottomsheet extends StatelessWidget {
  String title;
  String description;
  OnboardingBottomsheet({required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(
                      0,
                      0,
                    ),
                    end: Alignment(
                      0,
                      1,
                    ),
                    colors: [
                      // ColorConstant.purple90000,
                      // ColorConstant.purple900,
                        ColorConstant.onboard1,
                        ColorConstant.onboard2,
                        ColorConstant.onboard3,
                        ColorConstant.onboard4,
                        ColorConstant.onboard5,
                        ColorConstant.onboard6,
                        ColorConstant.onboard7,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          "ElderlySitter",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              30,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 1.00,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.1),
                    Container(
                      width: getHorizontalSize(
                        296.00,
                      ),
                      child: Text(
                        title,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            40,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
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
                          description,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              17,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.3),
                    Text(
                      "Bằng cách tham gia, bạn đã đồng ý với Điều khoản dịch vụ và Chính sách quyền riêng tư của chúng tôi",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray400,
                        fontSize: getFontSize(
                          13,
                        ),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1.38,
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
