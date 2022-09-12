import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OnboardingBottomsheet extends StatelessWidget {
  String title;
  String description;
  OnboardingBottomsheet({required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
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
                height: _size.height,
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
                        Image.asset(ImageConstant.imgLocation,
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          "ElderlySitter",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 1.00,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: _size.height*0.1),
                    Container(
                      width: _size.width,
                      child: Text(
                        title,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: _size.width,
                        margin: EdgeInsets.fromLTRB(3, 21, 1, 0),
                        child: Text(
                          description,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: _size.height*0.3),
                    Text(
                      "Bằng cách tham gia, bạn đã đồng ý với Điều khoản dịch vụ và Chính sách quyền riêng tư của chúng tôi",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray400,
                        fontSize: 13,
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
