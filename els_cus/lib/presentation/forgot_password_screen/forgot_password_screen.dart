import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:els_cus_mobile/widgets/SuccessWidget.dart';
import 'package:flutter/material.dart';

import '../../blocs/login_bloc.dart';
import '../../widgets/failWidget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  LoginBloc bloc = LoginBloc();

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
                            child: GestureDetector(
                              onTap: () {
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
                              left: size.width * 0.3,
                              top: 12,
                              bottom: 12,
                            ),
                            child: Text(
                              "Qu??n m???t kh???u",
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
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.05,
                    top: size.height * 0.03,
                    right: size.width * 0.05,
                    bottom: size.height * 0.03,
                  ),
                  child: Text(
                    "Nh???p email c???a b???n v?? ch??ng t??i s??? g???i cho b???n h?????ng d???n v??? c??ch ?????t l???i m???t kh???u",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: size.width * 0.045,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: size.height * 0.03,
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: StreamBuilder(
                      stream: bloc.emailStream,
                      builder: (context, snapshot) {
                        return TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          cursorColor: ColorConstant.purple900,
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: "Nh???p email",
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
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
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        forgotClick();
                        // Navigator.push(context, MaterialPageRoute(builder: (context)
                        // => const VerificationCodeScreen(functionKey: "forgotPasswordScreen")));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: ColorConstant.purple900,
                        textStyle: TextStyle(
                          fontSize: size.width * 0.045,
                        ),
                      ),
                      child: const Text("G???i"),
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

  void forgotClick() async {
    String email = _emailController.text.trim();
    bool isSuccess = false;
    isSuccess = await bloc.forgotPassword(email);
    if (isSuccess) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                    alert: 'G???i y??u c???u th??nh c??ng',
                    detail:
                        'Y??u c???u ?????t l???i m???t kh???u th??nh c??ng, vui l??ng ki???m tra email v?? ?????t l???i m???t kh???u m???i',
                    buttonName: 'Ho??n t???t',
                    navigatorName: '/loginScreen',
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'TH??NG B??O',
                  detail: '?????a ch??? email ch??a ???????c ????ng k??',
                  buttonName: 'quay l???i',
                  navigatorName: '/forgotPasswordScreen')));
    }
  }
}
