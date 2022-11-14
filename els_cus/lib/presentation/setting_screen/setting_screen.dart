import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
          toolbarHeight: size.height * 0.08,
          // bottomOpacity: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorConstant.purple900,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/accountScreen');
            },
            child: Image.asset(
              ImageConstant.imgArrowleft,
              height: size.height * 0.024,
              width: size.width * 0.03,
              color: ColorConstant.whiteA700,
            ),
          ),
          title: Container(
            decoration: BoxDecoration(
              color: ColorConstant.purple900,
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: size.height * 0.01,
                bottom: size.height * 0.01,
              ),
              child: Text(
                "Cài đặt",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.whiteA700,
                  fontSize: 28,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 1.00,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/changePasswordScreen');
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    right: size.width * 0.03,
                    top: size.height * 0.02,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Thay đổi mật khẩu",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            ImageConstant.imgArrowrightGray400,
                            width: size.width * 0.02,
                            height: size.width * 0.03,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                width: size.width,
                margin: EdgeInsets.only(
                  left: size.width * 0.015,
                  top: size.height * 0.015,
                  right: size.width * 0.015,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.bluegray50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
