
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListuserpictItemWidget extends StatelessWidget {
  const ListuserpictItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.5,
          bottom: 8.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.only(
                left: 19,
                top: 30,
                right: 18,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray400,
                borderRadius: BorderRadius.circular(
                  40,
                ),
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.bluegray400,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                top: 10,
                bottom: 11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 1,
                          ),
                          child: Text(
                            "Nguyễn Văn B",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 9,
                            top: 4,
                          ),
                          child: Image.asset(ImageConstant.imgCheckmark,height: 12, width: 12,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Image.asset(ImageConstant.imgLocation16X13, height: 12, width: 10,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            bottom: 1,
                          ),
                          child: Text(
                            "0.31 km",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          height:2,
                          width: 2,
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 6,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray400,
                            borderRadius: BorderRadius.circular(
                              1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 1,
                          ),
                          child: Text(
                            "Trò chuyện cùng",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray700,
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 1,
                      top: 5,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 2,
                            bottom: 2,
                          ),
                          child: Image.asset(ImageConstant.imgMinimize,width: 54, height: 10,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 4,
                            bottom: 1,
                          ),
                          child: Text(
                            "12",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          width: 2,
                          margin: const EdgeInsets.only(
                            left: 5,
                            top: 6,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray400,
                            borderRadius: BorderRadius.circular(
                              1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 1,
                          ),
                          child: Text(
                            "48000đ/giờ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 31,
                bottom: 31,
              ),
              child: Image.asset(ImageConstant.imgContrast, height: 18, width: 20,),
            ),
          ],
        ),
      ),
    );
  }
}
