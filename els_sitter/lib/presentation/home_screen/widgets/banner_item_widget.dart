
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BannerItemWidget extends StatelessWidget {
  const BannerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return IntrinsicWidth(
      child: Container(
        margin: EdgeInsets.only(
          right: size.width*0.03,
        ),
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
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: size.width*0.8,
                margin: EdgeInsets.only(
                  top: size.height*0.1,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(
                      8,
                    ),
                    bottomRight: Radius.circular(
                      8,
                    ),
                  ),
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
                      ColorConstant.purple90000,
                      ColorConstant.purple900,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[100],

                      ),
                      margin: EdgeInsets.only(
                        left: size.width*0.03,
                        right: size.width*0.03,
                      ),
                      child: const Text("1/5"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.01,
                        right: size.width*0.03,
                      ),
                      child: Text(
                        "Đặc biệt dành cho bạn",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: size.width*0.74,
                        margin: EdgeInsets.only(
                          left: size.width*0.03,
                          top: size.height*0.01,
                          right: size.width*0.03,
                        ),
                        child: Text(
                          "Giảm giá 50% cho những người thân yêu",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize:25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.015,
                        right: size.width*0.03,
                        bottom: size.height*0.01,
                      ),
                      child: Text(
                        "Chọn nhân viên ngay",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.pink300,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w100,
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
    );
  }
}
