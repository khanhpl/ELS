import 'package:els_cus/core/utils/color_constant.dart';
import 'package:els_cus/core/utils/image_constant.dart';
import 'package:els_cus/core/utils/math_utils.dart';
import 'package:els_cus/resources/widgets/common_image_view.dart';
import 'package:els_cus/resources/widgets/custom_button.dart';
import 'package:els_cus/resources/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: getMargin(
                      bottom: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: size.height * 0.3,
                            width: size.width,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: size.width,
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
                                          ColorConstant.onboard4,
                                          ColorConstant.onboard5,
                                          ColorConstant.onboard6,
                                          ColorConstant.onboard7,
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 32,
                                            top: 77,
                                            right: 32,
                                          ),
                                          child: Text(
                                            "Chào mừng",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
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
                                        Padding(
                                          padding: getPadding(
                                            left: 32,
                                            top: 65,
                                            right: 32,
                                            bottom: 37,
                                          ),
                                          child: Text(
                                            "Đăng nhập để tiếp tục",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                17,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
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
                        CustomTextFormField(
                          width: 311,
                          focusNode: FocusNode(),
                          hintText: "Số điện thoại/Email",
                          margin: getMargin(
                            left: 28,
                            top: 35,
                            right: 28,
                          ),
                          prefix: Container(
                            margin: getMargin(
                              right: 16,
                              bottom: 15,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgUser,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            minWidth: getSize(
                              16.00,
                            ),
                            minHeight: getSize(
                              16.00,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 311,
                          focusNode: FocusNode(),
                          hintText: "Mật Khẩu",
                          margin: getMargin(
                            left: 28,
                            top: 35,
                            right: 28,
                          ),
                          prefix: Container(
                            margin: getMargin(
                              right: 16,
                              bottom: 15,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgLock,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            minWidth: getSize(
                              16.00,
                            ),
                            minHeight: getSize(
                              16.00,
                            ),
                          ),
                        ),

                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            311.00,
                          ),
                          margin: getMargin(
                            left: 28,
                            top: 14,
                            right: 28,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 42,
                              top: 24,
                              right: 42,
                            ),
                            child: Text(
                              "Quên mật khẩu?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  17,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          width: 311,
                          text: "Đăng nhập",
                          margin: getMargin(
                            left: 28,
                            top: 29,
                            right: 28,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 28,
                            top: 27,
                            right: 28,
                          ),
                          child: Text(
                            "hoặc sử dụng",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: getFontSize(
                                17,
                              ),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 28,
                            top: 25,
                            right: 23,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomTextFormField(
                                width: 147,
                                focusNode: FocusNode(),
                                hintText: "Google",
                                variant: TextFormFieldVariant.OutlineBlack9002a,
                                padding: TextFormFieldPadding.PaddingTB16,
                                fontStyle:
                                    TextFormFieldFontStyle.RobotoMedium20,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                  padding: getPadding(
                                    all: 1,
                                  ),
                                  margin: getMargin(
                                    all: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    23.00,
                                  ),
                                  minHeight: getSize(
                                    23.00,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstant.blueA400,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      margin: getMargin(
                                        left: 15,
                                        top: 15,
                                        bottom: 15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA400,
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                all: 1,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgPath14,
                                                height: getVerticalSize(
                                                  22.00,
                                                ),
                                                width: getHorizontalSize(
                                                  23.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 14,
                                        right: 12,
                                        bottom: 19,
                                      ),
                                      child: Text(
                                        "Facebook",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            20,
                                          ),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 28,
                            top: 95,
                            right: 28,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Không có tài khoản? ',
                                  style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: getFontSize(
                                      17,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Đăng ký',
                                  style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: getFontSize(
                                      17,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 1.00,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: getFontSize(
                                      17,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
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
    );
  }
}
