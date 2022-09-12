import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        child: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: size.height * 0.33,
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: size.width,
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
                                        ColorConstant.onboard4,
                                        ColorConstant.onboard5,
                                        ColorConstant.onboard6,
                                        ColorConstant.onboard7,
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 32,
                                          top: 77,
                                          right: 32,
                                        ),
                                        child: Text(
                                          "Chào mừng",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: 40,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 32,
                                          top: 65,
                                          right: 32,
                                          bottom: 37,
                                        ),
                                        child: Text(
                                          "Đăng nhập để tiếp tục",
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //tk
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.05,
                          bottom: size.height * 0.03,
                          left: size.width * 0.05,
                          right: size.width * 0.05,
                        ),
                        child: TextField(
                          style: const TextStyle(fontSize: 16, color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Số điện thoại/Email",
                              prefixIcon: SizedBox(
                                  width: 50,
                                  child: Image.asset(ImageConstant.imgUser)),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCED0D2), width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)))),
                        ),
                      ),

                      //mk
                      Padding(
                        padding: EdgeInsets.fromLTRB(size.width * 0.05, 0,
                            size.width * 0.05, size.height * 0.03),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            TextField(
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              obscureText: !_showPass,
                              decoration:  InputDecoration(
                                  errorText: null,
                                  hintText: "Mật Khẩu",
                                  prefixIcon: SizedBox(
                                      width: 50,
                                      child: Image.asset(ImageConstant.imgLock)),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffCED0D2), width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6)))),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: size.height*0.02),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    onToggleShowPass();
                                  });
                                },
                                child: Text(
                                  _showPass ? "Ẩn" : "Hiện",
                                  style: const TextStyle(
                                    color: Color(0xff512678),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 1,
                        width: size.width,
                        margin: const EdgeInsets.only(
                          left: 28,
                          top: 0,
                          right: 28,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 42,
                            top: 24,
                            right: 42,
                          ),
                          child: Text(
                            "Quên mật khẩu?",
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 28,
                          top: 29,
                          right: 28,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: ColorConstant.purple900,
                              textStyle: const TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            child: const Text("Đăng nhập"),

                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 28,
                          top: 27,
                          right: 28,
                          bottom: size.height*0.03,
                        ),
                        child: Text(
                          "hoặc sử dụng",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray700,
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.9,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageConstant.imgGoogle,
                                  width: size.height * 0.04),
                              Text(
                                '    Đăng nhập với Google',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 28,
                          top: size.height*0.03,
                          right: 28,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Không có tài khoản? ',
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                              TextSpan(
                                text: 'Đăng ký',
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 1.00,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
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

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}
