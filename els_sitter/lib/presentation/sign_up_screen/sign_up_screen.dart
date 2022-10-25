import 'dart:io';

import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:scan/scan.dart';

import '../../blocs/signup_bloc.dart';
import '../../core/utils/globals.dart' as globals;
<<<<<<< HEAD
=======

>>>>>>> 93496aadf96d41cd322ddb34f37ed00ffc6de759

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _showPass = false;
  String _platformVersion = 'Unknown';
  String qrcode = 'Unknown';
  SignupBloc bloc = SignupBloc();

  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();

  late File imageFile;
  XFile? pickedFile;
  UploadTask? uploadTask;


  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Future uploadFile() async{
  //   final path = 'els_images/${pickedFile!.name}';
  //   final file = File(pickedFile!.path);
  //   print('Test path: ${path}');
  //   print('Test file: ${file}');
  //   final ref = FirebaseStorage.instance.ref().child(path);
  //   uploadTask = ref.putFile(file);
  //
  //   final snapshot = await uploadTask!.whenComplete(() {});
  //   final urlDownload = await snapshot.ref.getDownloadURL();
  //   print('Download link: ${urlDownload}');
  // }

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

    pickedFile = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    )) ;
    if (pickedFile != null) {
      setState(() {
<<<<<<< HEAD
        imageFile = File(pickedFile.path);
        globals.isIDFrontCheck = true;
        globals.idFrontFile = imageFile;
=======
        imageFile = File(pickedFile!.path);
        globals.isIDFrontCheck = true;
        globals.idFrontFile = imageFile;

        print('Test path: ${pickedFile!.path}');
>>>>>>> 93496aadf96d41cd322ddb34f37ed00ffc6de759
      });
    }
  }

  _getIDBackImageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        globals.isIDBackCheck = true;
        globals.idBackFile = imageFile;
      });
    }
  }

  _getIDFaceImageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        globals.isIDFaceCheck = true;
        globals.idFaceFile = imageFile;
      });
    }
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
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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
                                        controller: _fullnameController,
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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

                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        controller: _phoneController,
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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

                                    child: StreamBuilder(
                                      stream: null,
                                      builder: (context, snapshot) => TextField(
                                        style: TextStyle(
                                            fontSize: size.width * 0.04,
                                            color: Colors.black),
                                        controller: _emailController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),

                                          ),
                                          SizedBox(
                                            width: size.width * 0.2,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                _getIDFrontImageFromGallery();
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    ColorConstant.purple900,
                                                textStyle: TextStyle(
                                                  fontSize: size.width * 0.035,
                                                ),
                                              ),
                                              child: const Text("Tải lên"),
                                            ),
                                          ),
                                          globals.isIDFrontCheck == false
                                              ? Container(
                                                  width: size.height * 0.12,
                                                  height: size.height * 0.12,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  padding: EdgeInsets.only(
                                                      bottom:
                                                          size.height * 0.01),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1,
                                                      )),
                                                )
                                              : Container(
                                                  width: size.height * 0.12,
                                                  height: size.height * 0.12,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  padding: EdgeInsets.only(
                                                      bottom:
                                                          size.height * 0.01),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 1,
                                                    ),
                                                    image: DecorationImage(
                                                      image: FileImage(
                                                          globals.idFrontFile),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height*0.02,
                                    ),
                                    child: Text(
                                      "Giới tính",
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
                                        controller: _genderController,
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
                                      "Ngày sinh",
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
                                        controller: _dobController,
                                        decoration: const InputDecoration(
                                          // errorText: snapshot.hasError
                                          //     ? snapshot.error.toString()
                                          //     : null,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),

                                          ),
                                          SizedBox(
                                            width: size.width * 0.2,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    ColorConstant.purple900,
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
                                        width: size.width * 0.1,
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
                                            width: size.width * 0.2,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    ColorConstant.purple900,
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
                                    top: size.height * 0.02,
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
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
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
                                        controller: _idNumberController,
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

                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height*0.02,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
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
                                      globals.isIDFrontCheck == false
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
                                            image: FileImage(globals.idFrontFile),
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
                                            _getIDBackImageFromGallery();
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
                                      globals.isIDBackCheck == false
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
                                            image: FileImage(globals.idBackFile),
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
                                            _getIDFaceImageFromGallery();
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
                                      globals.isIDFaceCheck == false
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
                                            image: FileImage(globals.idFaceFile),
                                            fit: BoxFit.fill,
                                          ),

                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
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
                                        controller: _addressController,
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
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //     top: size.height*0.02,
                                  //   ),
                                  //   child: Text(
                                  //     "Quận/Huyện",
                                  //     overflow: TextOverflow.ellipsis,
                                  //     textAlign: TextAlign.left,
                                  //     style: TextStyle(
                                  //       color: ColorConstant.bluegray900,
                                  //       fontSize: 14,
                                  //       fontFamily: 'Outfit',
                                  //       fontWeight: FontWeight.w400,
                                  //     ),
                                  //   ),
                                  // ),
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //     top: size.height * 0.01,
                                  //   ),
                                  //   child: StreamBuilder(
                                  //     stream: null,
                                  //     builder: (context, snapshot) => TextField(
                                  //       style: TextStyle(
                                  //           fontSize: size.width * 0.04,
                                  //           color: Colors.black),
                                  //       // controller: _emailController,
                                  //       decoration: const InputDecoration(
                                  //         // errorText: snapshot.hasError
                                  //         //     ? snapshot.error.toString()
                                  //         //     : null,
                                  //         enabledBorder: UnderlineInputBorder(
                                  //           borderSide: BorderSide(color: Colors.black),
                                  //         ),
                                  //         focusedBorder: UnderlineInputBorder(
                                  //           borderSide: BorderSide(color: Colors.black),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //     top: size.height*0.02,
                                  //   ),
                                  //   child: Text(
                                  //     "Tỉnh/Thành phố",
                                  //     overflow: TextOverflow.ellipsis,
                                  //     textAlign: TextAlign.left,
                                  //     style: TextStyle(
                                  //       color: ColorConstant.bluegray900,
                                  //       fontSize: 14,
                                  //       fontFamily: 'Outfit',
                                  //       fontWeight: FontWeight.w400,
                                  //     ),
                                  //   ),
                                  // ),
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //     top: size.height * 0.01,
                                  //   ),
                                  //   child: StreamBuilder(
                                  //     stream: null,
                                  //     builder: (context, snapshot) => TextField(
                                  //       style: TextStyle(
                                  //           fontSize: size.width * 0.04,
                                  //           color: Colors.black),
                                  //       // controller: _emailController,
                                  //       decoration: const InputDecoration(
                                  //         // errorText: snapshot.hasError
                                  //         //     ? snapshot.error.toString()
                                  //         //     : null,
                                  //         enabledBorder: UnderlineInputBorder(
                                  //           borderSide: BorderSide(color: Colors.black),
                                  //         ),
                                  //         focusedBorder: UnderlineInputBorder(
                                  //           borderSide: BorderSide(color: Colors.black),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
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
                                signupClick();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: ColorConstant.purple900,
                                textStyle: TextStyle(
                                  fontSize: size.width * 0.045,
                                ),

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

  void signupClick() async {
    String fullname = _fullnameController.text.trim();
    String dob = _dobController.text.trim();
    String gender = _genderController.text.trim();
    String phone = _phoneController.text.trim();
    String address = _addressController.text.trim();
    String email = _emailController.text.trim();
    String id = _idNumberController.text.trim();
    String skill = "";
    String exp = "";
    bool createSuccess = false;
    
    createSuccess =await bloc.register(fullname, phone, email, gender, dob, id, address, skill, exp);
    if(createSuccess){
      // ignore: use_build_context_synchronously
      showSuccessAlertDialog(context);
      // print('tạo thành công');
    }else{
      // ignore: use_build_context_synchronously
      showFailAlertDialog(context);
      // print('tạo thất bại');
    }
  }

  void showSuccessAlertDialog(BuildContext context) {
    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        // Navigator.pushNamed(context, '/loginWithGoogleNav');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text(
        "Tài khoản đăng ký thành công, vui lòng đợi phản hồi từ email.",
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

  void showFailAlertDialog(BuildContext context) {
    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
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
        "Đăng ký tài khoản thất bại, vui lòng nhập lại.",
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
