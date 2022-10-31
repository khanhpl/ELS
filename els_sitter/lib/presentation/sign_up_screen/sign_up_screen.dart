import 'dart:io';

import 'package:els_sitter/blocs/service_blocs.dart';
import 'package:els_sitter/core/models/sitter_service_request_model.dart';
import 'package:els_sitter/core/models/certificateModel.dart';
import 'package:els_sitter/core/models/service_data_model.dart';
import 'package:els_sitter/core/models/service_model.dart';
import 'package:els_sitter/core/models/user_id_image_model.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:els_sitter/presentation/sign_up_screen/widget/update_service_button.dart';
import 'package:els_sitter/widgets/service_item_booking_widget.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:scan/scan.dart';
import '../../blocs/signup_bloc.dart';
import '../../core/utils/globals.dart' as globals;

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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
  bool _isGenderMale = true;
  bool _isGenderFemale = false;
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();
  final TextEditingController _personalDescriptionController =
      TextEditingController();
  final Future<ServiceModel> serviceList = ServiceBlocs().getAllService();
  List<ServiceDataModel> listSelectedService = [];
  List<SitterServiceRequestModel> listSitterService = [];
  final Map<dynamic, dynamic> listServiceObj = {};
  String dob = "Chọn ngày";
  List<TextEditingController> _listController = [];
  String frontIDImage = "";
  String backIDImage = "";
  String avatarImage = "";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void _changeDob(String date) async {
    setState(() {
      dob = date;
    });
  }

  bool checkChooseService(ServiceDataModel selectedService) {
    if (listSelectedService.isNotEmpty) {
      for (ServiceDataModel service in listSelectedService) {
        if (service.id == selectedService.id) {
          return true;
        }
      }
    }
    return false;
  }

  _chooseService(BuildContext context) {
    var size = MediaQuery.of(context).size;
    AlertDialog alert = AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: ColorConstant.gray300,
      content: Container(
        padding: EdgeInsets.all(size.width * 0.03),
        width: size.width,
        decoration: BoxDecoration(
          color: ColorConstant.gray300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: FutureBuilder<ServiceModel>(
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            if (snapshot.hasData) {
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.data.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: size.height * 0.01);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ServiceItemBookingWidget(
                              context, snapshot.data!.data[index]),
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    bool chkOccur = false;
                                    if (listSelectedService.isNotEmpty) {
                                      for (ServiceDataModel service
                                          in listSelectedService) {
                                        if (service.id ==
                                            snapshot.data!.data[index].id) {
                                          chkOccur = true;
                                        }
                                      }
                                      if (chkOccur) {
                                        listSelectedService
                                            .remove(snapshot.data!.data[index]);
                                        listServiceObj.removeWhere(
                                            (key, value) =>
                                                key ==
                                                snapshot.data!.data[index].id);

                                        _listController.removeAt(index * 2);
                                        _listController.removeAt(index * 2 + 1);
                                        listSitterService.removeAt(index);
                                      } else {
                                        listSelectedService
                                            .add(snapshot.data!.data[index]);
                                        listServiceObj[
                                                snapshot.data!.data[index].id] =
                                            snapshot.data!.data[index].duration;
                                        _listController
                                            .add(TextEditingController());
                                        _listController
                                            .add(TextEditingController());
                                      }
                                    } else {
                                      listSelectedService
                                          .add(snapshot.data!.data[index]);
                                      listServiceObj[
                                              snapshot.data!.data[index].id] =
                                          snapshot.data!.data[index].duration;
                                      _listController
                                          .add(TextEditingController());
                                      _listController
                                          .add(TextEditingController());
                                    }
                                    Navigator.pop(context);
                                  });
                                },
                                child: updateServiceButton(
                                    context,
                                    checkChooseService(
                                        snapshot.data!.data[index]))),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
          future: serviceList,
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

    // set up the AlertDialog
  }

  Future uploadFileFrontID() async {
    final path = 'els_images/${pickedFileFrontID!.name}';
    final file = File(pickedFileFrontID!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskFrontID = ref.putFile(file);

    final snapshot = await uploadTaskFrontID!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    frontIDImage = urlDownload;
    print('Download link frontID: ${urlDownload}');
  }

  Future uploadFileBackID() async {
    final path = 'els_images/${pickedFileBackID!.name}';
    final file = File(pickedFileBackID!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskBackID = ref.putFile(file);

    final snapshot = await uploadTaskBackID!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    backIDImage = urlDownload;
    print('Download link BackID: ${urlDownload}');
  }

  Future uploadFileFace() async {
    final path = 'els_images/${pickedFileFace!.name}';
    final file = File(pickedFileFace!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskFace = ref.putFile(file);

    final snapshot = await uploadTaskFace!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    avatarImage = urlDownload;
    print('Download link Face: ${urlDownload}');
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

  late File imageFileFrontID;
  XFile? pickedFileFrontID;
  UploadTask? uploadTaskFrontID;
  bool isIDFrontCheck = false;

  late File imageFileBackID;
  XFile? pickedFileBackID;
  UploadTask? uploadTaskBackID;
  bool isIDBackCheck = false;

  late File imageFileFace;
  XFile? pickedFileFace;
  UploadTask? uploadTaskFace;
  bool isFaceCheck = false;

  _getIDFrontImageFromGallery() async {
    pickedFileFrontID = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    ));
    if (pickedFileFrontID != null) {
      setState(() {
        imageFileFrontID = File(pickedFileFrontID!.path);
        isIDFrontCheck = true;
      });
    }
  }

  _getIDBackImageFromGallery() async {
    pickedFileBackID = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    ));
    if (pickedFileBackID != null) {
      setState(() {
        imageFileBackID = File(pickedFileBackID!.path);
        isIDBackCheck = true;
      });
    }
  }

  _getFaceImageFromGallery() async {
    pickedFileFace = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    ));
    if (pickedFileFace != null) {
      setState(() {
        imageFileFace = File(pickedFileFace!.path);
        isFaceCheck = true;
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
                                      stream: bloc.fullName,
                                      builder: (context, snapshot) => TextField(
                                            style: TextStyle(
                                                fontSize: size.width * 0.04,
                                                color: Colors.black),
                                            controller: _fullnameController,
                                            decoration: InputDecoration(
                                                hintText: "Họ và tên",
                                                errorText: snapshot.hasError
                                                    ? snapshot.error.toString()
                                                    : null,
                                                border:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCED0D2),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    6)))),
                                          )),
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.01,
                                  ),
                                  child: StreamBuilder(
                                      stream: bloc.phone,
                                      builder: (context, snapshot) => TextField(
                                            style: TextStyle(
                                                fontSize: size.width * 0.04,
                                                color: Colors.black),
                                            controller: _phoneController,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: "Số điện thoại",
                                                errorText: snapshot.hasError
                                                    ? snapshot.error.toString()
                                                    : null,
                                                border:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCED0D2),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    6)))),
                                          )),
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
                                      stream: bloc.email,
                                      builder: (context, snapshot) => TextField(
                                            style: TextStyle(
                                                fontSize: size.width * 0.04,
                                                color: Colors.black),
                                            controller: _emailController,
                                            decoration: InputDecoration(
                                                hintText: "Email",
                                                errorText: snapshot.hasError
                                                    ? snapshot.error.toString()
                                                    : null,
                                                border:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCED0D2),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    6)))),
                                          )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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
                                  // child: StreamBuilder(
                                  //     stream: bloc.gender,
                                  //     builder: (context, snapshot) => TextField(
                                  //       style: TextStyle(fontSize: size.width * 0.04, color: Colors.black),
                                  //       controller: _genderController,
                                  //       decoration: InputDecoration(
                                  //           hintText: "Giới tính",
                                  //           errorText: snapshot.hasError ? snapshot.error.toString() : null,
                                  //
                                  //           border: const OutlineInputBorder(
                                  //               borderSide: BorderSide(
                                  //                   color: Color(0xffCED0D2), width: 1),
                                  //               borderRadius:
                                  //               BorderRadius.all(Radius.circular(6)))),
                                  //     )),
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: _isGenderMale,
                                        onChanged: (value) {
                                          setState(() {
                                            _isGenderMale = true;
                                            _isGenderFemale = false;
                                          });
                                        },
                                        checkColor: ColorConstant.purple900,
                                        activeColor: Colors.white,
                                      ),
                                      Text(
                                        'Nam',
                                        style: TextStyle(
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.1),
                                      Checkbox(
                                        value: _isGenderFemale,
                                        onChanged: (value) {
                                          setState(() {
                                            _isGenderMale = false;
                                            _isGenderFemale = true;
                                          });
                                        },
                                        checkColor: ColorConstant.purple900,
                                        activeColor: Colors.white,
                                      ),
                                      Text(
                                        'Nữ',
                                        style: TextStyle(
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
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
                                    top: size.height * 0.03,
                                    left: size.width * 0.03,
                                    right: size.width * 0.03,
                                  ),
                                  child: StreamBuilder(
                                      stream: bloc.dob,
                                      builder: (context, snapshot) {
                                        return Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                DatePicker.showDatePicker(
                                                    context,
                                                    //showDateTime to pick time
                                                    showTitleActions: true,
                                                    maxTime: DateTime.now(),
                                                    onChanged: (date) {},
                                                    onConfirm: (date) {
                                                  String dateInput =
                                                      '${date.year}-${date.month}-${date.day}';
                                                  _changeDob(dateInput);
                                                },
                                                    currentTime: DateTime.now(),
                                                    locale: LocaleType.vi);
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: size.height * 0.07,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left:
                                                            size.width * 0.048,
                                                        right:
                                                            size.width * 0.048,
                                                      ),
                                                      child: Image.asset(
                                                          ImageConstant
                                                              .imgCalendar),
                                                    ),
                                                    Text(dob),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.01),
                                            snapshot.hasError
                                                ? Text(
                                                    snapshot.error.toString(),
                                                    style: const TextStyle(
                                                      color: Color(0xffCB4847),
                                                      fontSize: 13,
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        );
                                      }),
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
                                      stream: bloc.id,
                                      builder: (context, snapshot) => TextField(
                                            style: TextStyle(
                                                fontSize: size.width * 0.04,
                                                color: Colors.black),
                                            controller: _idNumberController,
                                            decoration: InputDecoration(
                                                hintText: "Số CCCD/CMND",
                                                errorText: snapshot.hasError
                                                    ? snapshot.error.toString()
                                                    : null,
                                                border:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCED0D2),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    6)))),
                                          )),
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
                                  ),
                                ),
                                StreamBuilder(
                                    stream: bloc.idImage,
                                    builder: (context, snapshot) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                        ),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Ảnh mặt trước",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray900,
                                                          fontSize: 10,
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.2,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            _getIDFrontImageFromGallery();
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary:
                                                                ColorConstant
                                                                    .purple900,
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          child: const Text(
                                                              "Tải lên"),
                                                        ),
                                                      ),
                                                      isIDFrontCheck == false
                                                          ? Container(
                                                              width:
                                                                  size.height *
                                                                      0.12,
                                                              height:
                                                                  size.height *
                                                                      0.12,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              padding: EdgeInsets.only(
                                                                  bottom:
                                                                      size.height *
                                                                          0.01),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .black,
                                                                        width:
                                                                            1,
                                                                      )),
                                                            )
                                                          : Container(
                                                              width:
                                                                  size.height *
                                                                      0.12,
                                                              height:
                                                                  size.height *
                                                                      0.12,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              padding: EdgeInsets.only(
                                                                  bottom:
                                                                      size.height *
                                                                          0.01),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1,
                                                                ),
                                                                image:
                                                                    DecorationImage(
                                                                  image: FileImage(
                                                                      imageFileFrontID),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
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
                                                        "Ảnh mặt sau",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray900,
                                                          fontSize: 10,
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.2,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            _getIDBackImageFromGallery();
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary:
                                                                ColorConstant
                                                                    .purple900,
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          child: const Text(
                                                              "Tải lên"),
                                                        ),
                                                      ),
                                                      isIDBackCheck == false
                                                          ? Container(
                                                              width:
                                                                  size.height *
                                                                      0.12,
                                                              height:
                                                                  size.height *
                                                                      0.12,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              padding: EdgeInsets.only(
                                                                  bottom:
                                                                      size.height *
                                                                          0.01),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .black,
                                                                        width:
                                                                            1,
                                                                      )),
                                                            )
                                                          : Container(
                                                              width:
                                                                  size.height *
                                                                      0.12,
                                                              height:
                                                                  size.height *
                                                                      0.12,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              padding: EdgeInsets.only(
                                                                  bottom:
                                                                      size.height *
                                                                          0.01),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1,
                                                                ),
                                                                image:
                                                                    DecorationImage(
                                                                  image: FileImage(
                                                                      imageFileBackID),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray900,
                                                          fontSize: 10,
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.2,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            _getFaceImageFromGallery();
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary:
                                                                ColorConstant
                                                                    .purple900,
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize:
                                                                  size.width *
                                                                      0.035,
                                                            ),
                                                          ),
                                                          child: const Text(
                                                              "Tải lên"),
                                                        ),
                                                      ),
                                                      isFaceCheck == false
                                                          ? Container(
                                                              width:
                                                                  size.height *
                                                                      0.12,
                                                              height:
                                                                  size.height *
                                                                      0.12,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              padding: EdgeInsets.only(
                                                                  bottom:
                                                                      size.height *
                                                                          0.01),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .black,
                                                                        width:
                                                                            1,
                                                                      )),
                                                            )
                                                          : Container(
                                                              width:
                                                                  size.height *
                                                                      0.12,
                                                              height:
                                                                  size.height *
                                                                      0.12,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              padding: EdgeInsets.only(
                                                                  bottom:
                                                                      size.height *
                                                                          0.01),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 1,
                                                                ),
                                                                image:
                                                                    DecorationImage(
                                                                  image: FileImage(
                                                                      imageFileFace),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              snapshot.hasError
                                                  ? Text(
                                                      snapshot.error.toString(),
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffCB4847),
                                                        fontSize: 13,
                                                      ),
                                                    )
                                                  : const SizedBox(),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
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
                                      stream: bloc.address,
                                      builder: (context, snapshot) => TextField(
                                            style: TextStyle(
                                                fontSize: size.width * 0.04,
                                                color: Colors.black),
                                            controller: _addressController,
                                            decoration: InputDecoration(
                                                hintText: "Địa chỉ",
                                                errorText: snapshot.hasError
                                                    ? snapshot.error.toString()
                                                    : null,
                                                border:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCED0D2),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    6)))),
                                          )),
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
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //     top: size.height*0.02,
                                //   ),
                                //   child: Text(
                                //     "Chứng chỉ chuyên môn (nếu có)",
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
                                //     left: size.width * 0.05,
                                //     top: 29,
                                //     right: size.width * 0.05,
                                //   ),
                                //   child: SizedBox(
                                //     width: double.infinity,
                                //     child: ElevatedButton(
                                //       onPressed: () {
                                //         // Navigator.pushNamed(context, "/homeScreen");
                                //       },
                                //       style: ElevatedButton.styleFrom(
                                //         primary: ColorConstant.purple900,
                                //         textStyle: TextStyle(
                                //           fontSize: size.width * 0.045,
                                //         ),
                                //       ),
                                //       child: const Text("Tải lên chứng chỉ"),
                                //     ),
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Text(
                                    "Dịch vụ có thể thực hiện",
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
                                    left: size.width * 0.03,
                                    top: size.height * 0.015,
                                    right: size.width * 0.03,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _chooseService(context);
                                          });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              ImageConstant.imgIconAdd,
                                              height: size.width * 0.03,
                                              width: size.width * 0.03,
                                            ),
                                            SizedBox(width: size.width * 0.015),
                                            Text(
                                              "Thêm dịch vụ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: ColorConstant.gray700,
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                height: 1.00,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listSelectedService.length,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: size.height * 0.01);
                                        },
                                        itemBuilder: (BuildContext context,
                                            int index) {
                                          // final TextEditingController _servicePrice = TextEditingController();
                                          // final TextEditingController _year = TextEditingController();

                                          return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '${listSelectedService[index].name}:'),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.03,
                                                  top: size.height * 0.01,
                                                ),
                                                child: Text(
                                                    '(giá đề xuất)${listSelectedService[index].price.ceil().toString()}VNĐ/${listSelectedService[index].duration} phút'),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: size.width * 0.01,
                                                    left: size.width * 0.03),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    const Text(
                                                        'Giá mong muốn:'),
                                                    SizedBox(
                                                        width: size.width *
                                                            0.03),
                                                    SizedBox(
                                                      height:
                                                          size.height * 0.03,
                                                      width:
                                                          size.width * 0.25,
                                                      child: TextField(
                                                        controller:
                                                            _listController[
                                                                index * 2],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width: size.width *
                                                            0.03),
                                                    const Text('VNĐ')
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: size.width * 0.01,
                                                    left: size.width * 0.03),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    const Text(
                                                        'Kinh nghiệm làm dịch vụ:'),
                                                    SizedBox(
                                                        width: size.width *
                                                            0.03),
                                                    SizedBox(
                                                      height:
                                                          size.height * 0.03,
                                                      width:
                                                          size.width * 0.25,
                                                      child: TextField(
                                                        controller:
                                                            _listController[
                                                                index * 2 +
                                                                    1],
                                                      ),
                                                    ),
                                                    const Text('Năm'),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.03,
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      listSitterService.add(SitterServiceRequestModel(
                                                          exp: int.parse(
                                                              _listController[
                                                                      index * 2 +
                                                                          1]
                                                                  .text),
                                                          id: listSelectedService[
                                                                  index]
                                                              .id,
                                                          servicePrice: int.parse(
                                                              _listController[
                                                                      index *
                                                                          2]
                                                                  .text)));
                                                    });
                                                  },
                                                  child: Text(
                                                    "Thêm",
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .purple900,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      //show elder
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Text(
                                    "Dịch vụ đã được thêm",
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
                                    left: size.width * 0.03,
                                    // top: size.height * 0.015,
                                    right: size.width * 0.03,
                                  ),
                                  child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listSitterService.length,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: size.height * 0.01);
                                    },
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Text(
                                          '${listSelectedService[index].name}: ${listSitterService[index].servicePrice} VNĐ');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Text(
                                    "Mô tả về bản thân",
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
                                            controller:
                                                _personalDescriptionController,
                                            decoration: InputDecoration(
                                                hintText: "",
                                                errorText: snapshot.hasError
                                                    ? snapshot.error.toString()
                                                    : null,
                                                border:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCED0D2),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    6)))),
                                          )),
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
                              // if(!createSuccess){
                              // }
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

  void signupClick() async {
    print('test + ${listSitterService.length.toString()}');
    List<CertificateModel> listCert = [];
    listCert.add(CertificateModel(url: "", name: ""));
    String fullname = _fullnameController.text.trim();
    String gender = _genderController.text.trim();
    String phone = _phoneController.text.toString().trim();
    String address = _addressController.text.trim();
    String email = _emailController.text.trim();
    String id = _idNumberController.text.trim();
    bool isValid = false;
    bool createSuccess = false;
    if (_isGenderMale = true) {
      gender = "Nam";
    } else {
      gender = "Nữ";
    }

    uploadFileFrontID();
    uploadFileBackID();
    uploadFileFace();
    UserIDImageModel userIdImage = UserIDImageModel(
        fontIdImgUrl: frontIDImage,
        backIdImgUrl: backIDImage,
        avatarImgUrl: avatarImage);
    isValid = bloc.isValidInput(
        fullname, email, phone, dob, id, address, gender, userIdImage);
    if (isValid) {
      createSuccess = await bloc.register(fullname, phone, email, gender, dob,
          id, address, listSitterService, userIdImage, listCert);
      if (createSuccess) {
        // ignore: use_build_context_synchronously

        showSuccessAlertDialog(context);
      } else {
        // ignore: use_build_context_synchronously
        showFailAlertDialog(context);
      }
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
        Navigator.pushNamed(context, '/loginScreen');
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
