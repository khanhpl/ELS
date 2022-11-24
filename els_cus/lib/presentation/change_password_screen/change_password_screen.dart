import 'package:els_cus_mobile/blocs/personal_information_bloc.dart';
import 'package:els_cus_mobile/blocs/personal_information_bloc.dart';
import 'package:els_cus_mobile/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';

import '../../widgets/SuccessWidget.dart';
import '../../widgets/failWidget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _showPass = false;
  final TextEditingController _curPassController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _rePassController = TextEditingController();
  PersonalInfoBloc bloc = PersonalInfoBloc();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        // bottomOpacity: 0.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.purple900,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
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
              "Đổi mật khẩu",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorConstant.whiteA700,
                fontSize: 30,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.00,
              ),
            ),
          ),
        ),
      ),
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
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.03,
                          right: size.width * 0.05,
                          left: size.width * 0.05,
                          bottom: size.height * 0.03,
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            StreamBuilder(
                                stream: bloc.curPassStream,
                                builder: (context, snapshot) {
                                  return TextField(
                                    controller: _curPassController,
                                    cursorColor: ColorConstant.purple900,
                                    style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black,
                                    ),
                                    obscureText: !_showPass,
                                    decoration: InputDecoration(
                                      errorText: snapshot.hasError
                                          ? snapshot.error.toString()
                                          : null,
                                      hintText: "Mật Khẩu hiện tại",
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
                                stream: bloc.newPassStream,
                                builder: (context, snapshot) {
                                  return TextField(
                                    controller: _passController,
                                    cursorColor: ColorConstant.purple900,
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
                                              Radius.circular(6))),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: ColorConstant.purple900,
                                        ),
                                      ),
                                    ),
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
                                stream: bloc.reNewPassStream,
                                builder: (context, snapshot) {
                                  return TextField(
                                    controller: _rePassController,
                                    cursorColor: ColorConstant.purple900,
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
                                              Radius.circular(6))),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: ColorConstant.purple900,
                                        ),
                                      ),
                                    ),
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
                              changePw();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: ColorConstant.purple900,
                              textStyle: TextStyle(
                                fontSize: size.width * 0.045,
                              ),
                            ),
                            child: const Text("Lưu"),
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
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void changePw() async {
    String curPass = _curPassController.text.trim();
    String newPass = _passController.text.trim();
    String reNewPass = _rePassController.text.trim();
    bool isValidAcc = false;
    bool createSuccess = false;
    isValidAcc = bloc.isValidInput(curPass, newPass, reNewPass);
    if (isValidAcc) {
      createSuccess = await bloc.changePassword(curPass, newPass);
      if (createSuccess) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SuccessScreen(
                    alert: 'Đổi mật khẩu thành công',
                    detail:
                        'Đổi mật khẩu thành công vui lòng ấn quay lại để về trang chủ',
                    buttonName: 'quay lại',
                    navigatorName: '/homeScreen')));
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FailScreen(
                    alert: 'Đổi mật khẩu thất bại',
                    detail:
                        'Đổi mật khẩu thất bại vui lòng nhập lại mật khẩu mới',
                    buttonName: 'quay lại',
                    navigatorName: '/changePasswordScreen')));
      }
    }
  }
}
