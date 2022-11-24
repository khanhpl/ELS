import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class FailScreen extends StatefulWidget {
  String alert;
  String detail;
  String buttonName;
  String navigatorName;

  FailScreen(
      {super.key,
      required this.alert,
      required this.detail,
      required this.buttonName,
      required this.navigatorName});

  @override
  State<FailScreen> createState() => _FailScreenState(
      alert: alert,
      detail: detail,
      buttonName: buttonName,
      navigatorName: navigatorName);
}

class _FailScreenState extends State<FailScreen> {
  String alert;
  String detail;
  String buttonName;
  String navigatorName;

  _FailScreenState(
      {required this.alert,
      required this.detail,
      required this.buttonName,
      required this.navigatorName});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.purple900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height * 0.93,
              margin: EdgeInsets.all(size.width * 0.05),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                border: Border.all(
                  color: ColorConstant.whiteA700,
                  width: 5.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    bottom: size.height * 0.005,
                    // left: size.width * 0.03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          size.width * 0,
                          size.height * 0.05,
                          0,
                          size.height * 0.1,
                        ),
                        child: Image.asset(
                          ImageConstant.imgFail,
                          width: size.width * 0.3,
                          height: size.height * 0.2,
                        ),
                      ),
                      Text(
                        "Đặt lịch thất bại",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.redFail,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.05,
                            right: size.width * 0.1,
                            left: size.width * 0.1),
                        child: Text(
                          "Đặt lịch thất bại vui lòng ấn quay lại để trở về trang chủ",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: ColorConstant.gray700,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.3,
                          right: size.width * 0.03,
                        ),
                        child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                child: Text("Quay lại".toUpperCase(),
                                    style: TextStyle(fontSize: 14)),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            ColorConstant.BG),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            ColorConstant.purple900),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                color: ColorConstant.purple900)))),
                                onPressed: () => null)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
