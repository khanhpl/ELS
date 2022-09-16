
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BannerItemWidget extends StatelessWidget {
  const BannerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.gray400,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 64,
                top: 197,
                right: 63,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.bluegray400,
                  fontSize: 48,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 326,
                margin: const EdgeInsets.only(
                  top: 12,
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
                      margin: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: const Text("1/5"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                        right: 16,
                      ),
                      child: Text(
                        "Đặc biệt dành cho bạn",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 294,
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 12,
                          right: 16,
                        ),
                        child: Text(
                          "Giảm giá 50% cho những người thân yêu",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize:30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 22,
                        right: 16,
                        bottom: 18,
                      ),
                      child: Text(
                        "Chọn nhân viên ngay",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.pink300,
                          fontSize: 20,
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
