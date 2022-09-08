
import 'package:els_cus/core/utils/color_constant.dart';
import 'package:els_cus/core/utils/image_constant.dart';
import 'package:els_cus/core/utils/math_utils.dart';
import 'package:els_cus/resources/widgets/common_image_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      // height: getVerticalSize(
                      //   812.00,
                      // ),
                      height: size.height,
                      // width: getHorizontalSize(
                      //   375.00,
                      // ),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.purple900,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 61,
                                top: 20,
                                right: 61,
                                bottom: 20,
                              ),
                              child: Text(
                                "ElderlySitter",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    36,
                                  ),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 50,
                                top: 328,
                                right: 50,
                                bottom: 328,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getVerticalSize(
                                  82.00,
                                ),
                                width: getHorizontalSize(
                                  76.00,
                                ),
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
          ),
        ),
      ),
    );
  }
}
