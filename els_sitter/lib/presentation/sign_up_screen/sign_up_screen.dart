import 'dart:io';

import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:scan/scan.dart';
import '../../core/utils/globals.dart' as Globals;
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _showPass = false;
  String _platformVersion = 'Unknown';
  String qrcode = 'Unknown';
  late File imageFile;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await Scan.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }
  _getIDFrontImageFromGallery() async {
    // PickedFile? pickedFile = await ImagePicker().getImage(
    //   source: ImageSource.gallery,
    // );
    // if (pickedFile != null) {
    //   setState(() {
    //     imageFile = File(pickedFile.path);
    //     Globals.isIDFrontCheck = true;
    //     Globals.idFrontFile = imageFile;
    //   });
    // }
  }

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
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Họ và Tên",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray900,
                                      fontSize: 14,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Số điện thoại",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Email",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Năm sinh",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Số CMND/CCCD",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Tải lên ảnh CMND/CCCD - Khuôn mặt",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height*0.02,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Ảnh mặt trước",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 10,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width*0.2,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          _getIDFrontImageFromGallery();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.035,
                                          ),
                                        ),
                                        child: const Text("Tải lên"),
                                      ),
                                    ),
                                    Globals.isIDFrontCheck == false
                                        ? Container(
                                      width: size.height * 0.12,
                                      height: size.height * 0.12,
                                      alignment: Alignment.bottomCenter,
                                      padding: EdgeInsets.only(bottom: size.height * 0.01),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        )
                                      ),
                                    )
                                        : Container(
                                      width: size.height * 0.12,
                                      height: size.height * 0.12,
                                      alignment: Alignment.bottomCenter,
                                      padding: EdgeInsets.only(bottom: size.height * 0.01),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                        image: DecorationImage(
                                          image: FileImage(Globals.idFrontFile),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width*0.1,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Ảnh mặt sau",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 10,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width*0.2,
                                      child: ElevatedButton(
                                        onPressed: () {
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.035,
                                          ),
                                        ),
                                        child: const Text("Tải lên"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width*0.1,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Ảnh khuôn mặt",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 10,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width*0.2,
                                      child: ElevatedButton(
                                        onPressed: () {
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.035,
                                          ),
                                        ),
                                        child: const Text("Tải lên"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Địa chỉ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Quận/Huyện",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Tỉnh/Thành phố",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.01,
                                    ),
                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        // controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Chứng chỉ chuyên môn (nếu có)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
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
                                          // Navigator.pushNamed(context, "/homeScreen");
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                          ),
                                        ),
                                        child: const Text("Tải lên chứng chỉ"),
                                      ),
                                    ),
                                  ),
                                ],
                              )
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const VerificationCodeScreen(functionKey: "signUpScreen")));
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
}
