import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.bluegray50,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(
                            0,
                            1,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 9,
                            top: 11,
                            bottom: 12,
                          ),
                          child: Image.asset(
                            ImageConstant.imgArrowleftBlack900,
                            width: size.width * 0.03,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 112,
                            top: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            "Xác thực số điện thoại",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black901,
                              fontSize: size.width * 0.045,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 43,
                    right: 16,
                  ),
                  child: Text(
                    "Chúng tôi đã gửi mã xác minh của bạn tới (+84)123456789",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: size.width*0.045,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 40,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.bluegray50,
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(
                            0,
                            -1,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18,
                            top: 20,
                            bottom: 6,
                          ),
                          child: Text(
                            "Mã xác thực",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize:
                              size.width *0.045,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 26,
                            top: 21,
                            bottom: 5,
                          ),
                          child: Text(
                            "Nhập mã ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray400,
                              fontSize: size.width*0.045,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    top: 29,
                    right: size.width * 0.05,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: ColorConstant.purple900,
                        textStyle: TextStyle(
                          fontSize: size.width * 0.045,
                        ),
                      ),
                      child: const Text("Xác thực"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 27,
                    right: 16,
                    bottom: 436,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 1,
                        ),
                        child: Text(
                          "Gửi lại",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: size.width*0.045,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                        ),
                        child: Text(
                          "Còn 1:20 phút",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.bluegray400,
                            fontSize: size.width*0.045,
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
        ),
      ),
    );
  }
}
