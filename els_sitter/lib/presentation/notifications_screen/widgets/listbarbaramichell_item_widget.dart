
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbarbaramichellItemWidget extends StatelessWidget {
  const ListbarbaramichellItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.01,
          bottom: size.height * 0.01,
          left: size.width *0.03,
          right: size.width *0.03,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Lê Thị G',
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w100,
                            height: 1.00,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 1.00,
                          ),
                        ),
                        TextSpan(
                          text: 'đã xác nhận yêu cầu của bạn',
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.00,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),

                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                        ),
                        child: Image.asset(
                          ImageConstant.imgClock,
                          width: size.height * 0.015,
                          height: size.height * 0.015,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.01,
                        ),
                        child: Text(
                          "10:00 CH",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.bluegray400,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.04,
              ),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: ColorConstant.gray400,
                  borderRadius: BorderRadius.circular(
                    22.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
