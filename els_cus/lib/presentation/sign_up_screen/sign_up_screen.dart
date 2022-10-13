import 'package:els_cus_mobile/blocs/sign_up_blocs.dart';
import 'package:els_cus_mobile/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _showPass = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _rePassController = TextEditingController();
  SignUpBloc bloc = SignUpBloc();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SizedBox(
        width: size.width,
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
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
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.08,
                                          top: size.height * 0.1,
                                          right: size.width * 0.08,
                                        ),
                                        child: Text(
                                          "Chào mừng",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: size.width * 0.1,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.08,
                                          top: size.height * 0.05,
                                          right: size.width * 0.08,
                                          bottom: size.height * 0.05,
                                        ),
                                        child: Text(
                                          "Đăng ký để tham giao với chúng tôi",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: size.width * 0.045,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
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
                        child: StreamBuilder(
                            stream: bloc.fullnameStream,
                            builder: (context, snapshot) {
                              return TextField(
                                controller: _fullnameController,
                                style: TextStyle(
                                    fontSize: size.width * 0.04,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                    errorText: snapshot.hasError
                                        ? snapshot.error.toString()
                                        : null,
                                    hintText: "Họ và tên",
                                    prefixIcon: SizedBox(
                                        width: size.width * 0.05,
                                        child:
                                            Image.asset(ImageConstant.imgUser)),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffCED0D2), width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)))),
                              );
                            }),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          top: 0,
                          bottom: size.height * 0.03,
                          left: size.width * 0.05,
                          right: size.width * 0.05,
                        ),
                        child: StreamBuilder(
                            stream: bloc.emailStream,
                            builder: (context, snapshot) {
                              return TextField(
                                controller: _emailController,
                                style: TextStyle(
                                    fontSize: size.width * 0.04,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                    errorText: snapshot.hasError
                                        ? snapshot.error.toString()
                                        : null,
                                    hintText: "Email",
                                    prefixIcon: SizedBox(
                                        width: size.width * 0.05,
                                        child:
                                            Image.asset(ImageConstant.imgUser)),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffCED0D2), width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)))),
                              );
                            }),
                      ),

                      //mk
                      Padding(
                        padding: EdgeInsets.fromLTRB(size.width * 0.05, 0,
                            size.width * 0.05, size.height * 0.03),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            StreamBuilder(
                                stream: bloc.passStream,
                                builder: (context, snapshot) {
                                  return TextField(
                                    controller: _passController,
                                    style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black,
                                    ),
                                    obscureText: !_showPass,
                                    decoration: InputDecoration(
                                        errorText: snapshot.hasError
                                            ? snapshot.error.toString()
                                            : null,
                                        hintText: "Mật Khẩu",
                                        prefixIcon: SizedBox(
                                            width: size.width * 0.05,
                                            child: Image.asset(
                                                ImageConstant.imgLock)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xffCED0D2),
                                                width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)))),
                                  );
                                }),
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
                            StreamBuilder(
                                stream: bloc.rePassStream,
                                builder: (context, snapshot) {
                                  return TextField(
                                    controller: _rePassController,
                                    style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black,
                                    ),
                                    obscureText: !_showPass,
                                    decoration: InputDecoration(
                                        errorText: snapshot.hasError
                                            ? snapshot.error.toString()
                                            : null,
                                        hintText: "Nhập lại mật khẩu",
                                        prefixIcon: SizedBox(
                                            width: size.width * 0.05,
                                            child: Image.asset(
                                                ImageConstant.imgLock)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xffCED0D2),
                                                width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)))),
                                  );
                                }),
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

                      Container(
                        height: 1,
                        width: size.width,
                        margin: EdgeInsets.only(
                          left: size.width * 0.04,
                          top: 0,
                          right: size.width * 0.04,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray50,
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
                            onPressed: () {
                              onSignUpClick();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: ColorConstant.purple900,
                              textStyle: TextStyle(
                                fontSize: size.width * 0.045,
                              ),
                            ),
                            child: const Text("Đăng ký"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.05,
                          top: size.height * 0.03,
                          right: size.width * 0.05,
                          bottom: size.height * 0.03,
                        ),
                        child: Text(
                          "hoặc sử dụng",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray700,
                            fontSize: size.width * 0.045,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
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
                                '    Đăng ký với Google',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width * 0.05,
                          top: size.height * 0.03,
                          right: size.width * 0.05,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Đã có tài khoản? ',
                              style: TextStyle(
                                color: ColorConstant.gray700,
                                fontSize: size.width * 0.045,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/loginScreen');
                              },
                              child: Text(
                                'Đăng nhập',
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: size.width * 0.045,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                    ],
                  ),
                ),
              ),
            ],
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

  void onSignUpClick() {
    String fullname = _fullnameController.text.trim();
    String email = _emailController.text.trim();
    String pass = _passController.text.trim();
    String rePass = _rePassController.text.trim();
    bool isValidAcc = false;
    isValidAcc = bloc.isValidInput(fullname, email, pass, rePass);
    if (isValidAcc) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const VerificationCodeScreen(functionKey: "signUpScreen")));
    }
  }
}
