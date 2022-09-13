import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OnboardingBottomsheet extends StatelessWidget {
  String title;
  String description;
  OnboardingBottomsheet({super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
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
                  begin: const Alignment(
                    0,
                    0,
                  ),
                  end: const Alignment(
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
                        width: size.width*0.15,
                        height: size.width*0.15,
                      ),
                      Text(
                        "ElderlySitter",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: size.width*0.08,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height*0.1),
                  Padding(
                    padding: EdgeInsets.only(left: size.width*0.05, right:size.width*0.05 ),
                    child: SizedBox(
                      width: size.width,
                      child: Text(
                        title,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: size.width*0.1,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: EdgeInsets.fromLTRB(size.width*0.05, size.height*0.05, size.width*0.05, 0),
                      child: Text(
                        description,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: size.width*0.04,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
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
                      fontSize: size.width*0.035,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
