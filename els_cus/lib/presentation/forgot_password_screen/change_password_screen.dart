import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {

  ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _showPass = false;

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
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
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
                            child:GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                ImageConstant.imgArrowleftBlack900,
                                width: size.width * 0.03,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width*0.3,
                              top: 12,
                              bottom: 12,
                            ),
                            child: Text(
                              "Đổi mật khẩu",
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
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, size.height * 0.03,
                      size.width * 0.05, size.height * 0.03),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextField(
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: Colors.black,
                        ),
                        obscureText: !_showPass,
                        decoration: InputDecoration(
                            errorText: null,
                            hintText: "Nhập mật khẩu mới",
                            prefixIcon: SizedBox(
                                width: size.width * 0.05,
                                child:
                                Image.asset(ImageConstant.imgLock)),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCED0D2), width: 1),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(6)))),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(right: size.height * 0.02),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              onToggleShowPass();
                            });
                          },
                          child: Text(
                            _showPass ? "Ẩn" : "Hiện",
                            style: TextStyle(
                              color: const Color(0xff512678),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0,
                      size.width * 0.05, size.height * 0.03),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextField(
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: Colors.black,
                        ),
                        obscureText: !_showPass,
                        decoration: InputDecoration(
                            errorText: null,
                            hintText: "Nhập lại mật khẩu",
                            prefixIcon: SizedBox(
                                width: size.width * 0.05,
                                child:
                                Image.asset(ImageConstant.imgLock)),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCED0D2), width: 1),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(6)))),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(right: size.height * 0.02),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              onToggleShowPass();
                            });
                          },
                          child: Text(
                            _showPass ? "Ẩn" : "Hiện",
                            style: TextStyle(
                              color: const Color(0xff512678),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
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
                      child: const Text("Xác nhận"),
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

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}