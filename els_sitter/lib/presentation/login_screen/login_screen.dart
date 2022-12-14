import 'package:els_sitter/blocs/login_bloc.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import "package:provider/provider.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  LoginBloc bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.08,
                                        top: size.height * 0.1,
                                        right: size.width * 0.08,
                                      ),
                                      child: Text(
                                        "Ch??o m???ng",
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
                                        "????ng nh???p ????? ti???p t???c",
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
                          stream: bloc.emailStream,
                          builder: (context, snapshot) => TextField(
                                style: TextStyle(
                                    fontSize: size.width * 0.04,
                                    color: Colors.black),
                                controller: _emailController,
                                cursorColor: ColorConstant.purple900,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  errorText: snapshot.hasError
                                      ? snapshot.error.toString()
                                      : null,
                                  prefixIcon: SizedBox(
                                      width: size.width * 0.05,
                                      child:
                                          Image.asset(ImageConstant.imgUser)),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffCED0D2), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: ColorConstant.purple900,
                                    ),
                                  ),
                                ),
                              )),
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
                              builder: ((context, snapshot) => TextField(
                                    style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black,
                                    ),
                                    obscureText: !_showPass,
                                    controller: _passController,
                                    cursorColor: ColorConstant.purple900,
                                    decoration: InputDecoration(
                                        errorText: snapshot.hasError
                                            ? snapshot.error.toString()
                                            : null,
                                        hintText: "M???t Kh???u",
                                        prefixIcon: SizedBox(
                                            width: size.width * 0.05,
                                            child: Image.asset(
                                                ImageConstant.imgLock)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xffCED0D2),
                                                width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6))),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: ColorConstant.purple900,
                                        ),
                                      ),
                                    ),
                                  ))),
                          Padding(
                            padding: EdgeInsets.only(right: size.height * 0.02),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  onToggleShowPass();
                                });
                              },
                              child: Text(
                                _showPass ? "???n" : "Hi???n",
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.05,
                          top: size.height * 0.03,
                          right: size.width * 0.05,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/forgotPasswordScreen');
                          },
                          child: Text(
                            "Qu??n m???t kh???u?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: size.width * 0.045,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                          onPressed: () {
                            onLoginClick();
                            // Navigator.pushNamed(context, "/homeScreen");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstant.purple900,
                            textStyle: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                          ),
                          child: const Text("????ng nh???p"),
                        ),
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
                            'Kh??ng c?? t??i kho???n? ',
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: size.width * 0.045,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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
                            Navigator.pushNamed(context, "/signUpScreen");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstant.gray301,
                            textStyle: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                          ),
                          child: const Text("G???i ????n ????ng k??"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.1)
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

  onLoginClick() async {
    String email = _emailController.text.trim();
    String pass = _passController.text.trim();
    bool isTrueAcc = false;
    bool isValidAcc = false;
    isValidAcc = bloc.isValidInput(email, pass);

    if (isValidAcc) {
      isTrueAcc = await bloc.checkCurUser(email, pass);
      if (isTrueAcc) {
        Navigator.pushNamed(context, '/homeScreen');
      } else {
        showAlertDialog(context);
      }
    }
  }

  void showAlertDialog(BuildContext context) {
    Widget continueButton = TextButton(
      child: Text(
        "X??c nh???n",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text(
        "T??i kho???n ho???c m???t kh???u kh??ng ch??nh x??c vui l??ng nh???p l???i",
      ),
      actions: [
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
