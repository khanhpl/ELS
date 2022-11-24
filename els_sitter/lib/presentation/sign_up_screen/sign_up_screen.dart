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

import '../../widgets/failWidget.dart';
import '../../widgets/successWidget.dart';

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
  final TextEditingController _certLinkController = TextEditingController();
  final TextEditingController _certLinkImgController = TextEditingController();
  final TextEditingController _certNameController = TextEditingController();
  final Future<ServiceModel> serviceList = ServiceBlocs().getAllService();
  List<ServiceDataModel> listSelectedService = [];

  List<CertificateModel> listCert = [];
  List<SitterServiceRequestModel> listSitterService = [];
  final Map<dynamic, dynamic> listServiceObj = {};
  String dob = "";
  List<TextEditingController> _listController = [];
  String frontIDImage = "";
  String backIDImage = "";
  String avatarImage = "";
  String certURL = "";
  late StateSetter _setState;
  bool _isURLCert = true;
  bool _isImageCert = false;

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

  void changeCertSendType() async {
    setState(() {
      if (_isURLCert) {
        _isURLCert = false;
        _isImageCert = true;
      } else {
        _isURLCert = true;
        _isImageCert = false;
      }
    });
  }

  _addCertifiCate(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Widget confirmButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        setState(() {
          listCert.add(CertificateModel(
              url: _certLinkController.text, name: _certNameController.text));
          _certLinkController.text = "";
          _certNameController.text = "";
        });
      },
    );
    AlertDialog alert = AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: ColorConstant.whiteA700,
      actions: [
        confirmButton,
      ],
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          _setState = setState;
          return Container(
              width: size.width,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        left: size.width * 0.03,
                      ),
                      child: Text(
                        "Tải lên chứng chỉ bằng:",
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
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isURLCert,
                            onChanged: (value) {
                              setState(() {
                                // _isURLCert = true;
                                // _isImageCert = false;
                                changeCertSendType();
                              });
                            },
                            checkColor: ColorConstant.purple900,
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Đường dẫn',
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: size.width * 0.1),
                          Checkbox(
                            value: _isImageCert,
                            onChanged: (value) {
                              setState(() {
                                // _isURLCert = false;
                                // _isImageCert = true;
                                changeCertSendType();
                              });
                            },
                            checkColor: ColorConstant.purple900,
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Hình ảnh',
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    (_isURLCert)
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.05,
                              bottom: size.height * 0.03,
                              left: size.width * 0.05,
                              right: size.width * 0.05,
                            ),
                            child: StreamBuilder(
                              stream: null,
                              builder: (context, snapshot) => TextField(
                                style: TextStyle(
                                    fontSize: size.width * 0.04,
                                    color: Colors.black),
                                controller: _certLinkController,
                                decoration: InputDecoration(
                                    hintText: "Đường dẫn",
                                    errorText: snapshot.hasError
                                        ? snapshot.error.toString()
                                        : null,
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffCED0D2), width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)))),
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.2,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        _getCertImageFromGallery();
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
                                  isCertCheck == false
                                      ? Container(
                                          width: size.height * 0.12,
                                          height: size.height * 0.12,
                                          alignment: Alignment.bottomCenter,
                                          padding: EdgeInsets.only(
                                              bottom: size.height * 0.01),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 1,
                                              )),
                                        )
                                      : Container(
                                          width: size.height * 0.12,
                                          height: size.height * 0.12,
                                          alignment: Alignment.bottomCenter,
                                          padding: EdgeInsets.only(
                                              bottom: size.height * 0.01),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 1,
                                            ),
                                            image: DecorationImage(
                                              image: FileImage(imageFileCert),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.05,
                                  bottom: size.height * 0.03,
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: StreamBuilder(
                                  stream: null,
                                  builder: (context, snapshot) => TextField(
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        color: Colors.black),
                                    controller: null,
                                    decoration: InputDecoration(
                                        hintText: "Đường dẫn",
                                        errorText: snapshot.hasError
                                            ? snapshot.error.toString()
                                            : null,
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xffCED0D2),
                                                width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)))),
                                  ),
                                ),
                              )
                            ],
                          ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        left: size.width * 0.03,
                      ),
                      child: Text(
                        "Tên chứng chỉ:",
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
                        top: size.height * 0.05,
                        bottom: size.height * 0.03,
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _certNameController,
                          decoration: InputDecoration(
                              hintText: "Tên chứng chỉ",
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCED0D2), width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)))),
                        ),
                      ),
                    )
                  ],
                ),
              ));
        },
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

  _addSitterService(BuildContext context, ServiceDataModel service) {
    var size = MediaQuery.of(context).size;

    AlertDialog alert = AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      content: StatefulBuilder(builder: (context, setState) {
        _setState = setState;
        final TextEditingController _hobPriceController =
            TextEditingController();
        final TextEditingController _workExpController =
            TextEditingController();
        return Container(
            padding: EdgeInsets.all(size.width * 0.03),
            width: size.width,
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Text(
                      "Tên dịch vụ:",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.03,
                    ),
                    child: Text(
                      service.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.02,
                    ),
                    child: Text(
                      "Giá dịch vụ(Đề xuất):",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.03,
                    ),
                    child: Text(
                      '${service.price.ceil()}VNĐ/ ${service.duration} phút',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        StreamBuilder(
                          stream: null,
                          builder: (context, snapshot) => TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            controller: _hobPriceController,
                            cursorColor: ColorConstant.purple900,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Giá dịch vụ mong muốn",
                              hintStyle: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorConstant.purple900),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.height * 0.02),
                          child: Text(
                            "VNĐ",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        StreamBuilder(
                          stream: null,
                          builder: (context, snapshot) => TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            controller: _workExpController,
                            cursorColor: ColorConstant.purple900,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Kinh nghiệm làm việc(Năm)",
                              hintStyle: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorConstant.purple900),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.height * 0.02),
                          child: Text(
                            "Năm",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.05,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          listSitterService.add(SitterServiceRequestModel(
                              servicePrice: int.parse(_hobPriceController.text),
                              exp: int.parse(_workExpController.text),
                              id: service.id));
                          if (listSitterService.isNotEmpty) {
                            for (ServiceDataModel service
                                in listSelectedService) {
                              bool addedService = false;
                              for (SitterServiceRequestModel sitterService
                                  in listSitterService) {
                                if (service.id == sitterService.id) {
                                  addedService = true;
                                }
                              }
                              if (!addedService) {
                                listSelectedService.remove(service);
                              }
                            }
                          } else {
                            listSelectedService.clear();
                          }
                          Navigator.pop(context);
                        },
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
            ));
      }),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  _updateSitterService(
      BuildContext context, SitterServiceRequestModel sitterService) {
    var size = MediaQuery.of(context).size;

    AlertDialog alert = AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      content: StatefulBuilder(builder: (context, setState) {
        _setState = setState;
        ServiceDataModel service = listSelectedService
            .where((element) => element.id == sitterService.id)
            .toList()[0];
        final TextEditingController _hobPriceController =
            TextEditingController();
        final TextEditingController _workExpController =
            TextEditingController();
        _hobPriceController.text = sitterService.servicePrice.toString();
        _workExpController.text = sitterService.exp.toString();

        return Container(
            padding: EdgeInsets.all(size.width * 0.03),
            width: size.width,
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Text(
                      "Tên dịch vụ:",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.03,
                    ),
                    child: Text(
                      service.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.02,
                    ),
                    child: Text(
                      "Giá dịch vụ(Đề xuất):",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.03,
                    ),
                    child: Text(
                      '${service.price.ceil()}VNĐ/ ${service.duration} phút',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.bluegray900,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        StreamBuilder(
                          stream: null,
                          builder: (context, snapshot) => TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            controller: _hobPriceController,
                            cursorColor: ColorConstant.purple900,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Giá dịch vụ mong muốn(VNĐ)",
                              hintStyle: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorConstant.purple900),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.height * 0.02),
                          child: Text(
                            "VNĐ",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        StreamBuilder(
                          stream: null,
                          builder: (context, snapshot) => TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            controller: _workExpController,
                            cursorColor: ColorConstant.purple900,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Kinh nghiệm làm việc(Năm)",
                              hintStyle: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorConstant.purple900),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.height * 0.02),
                          child: Text(
                            "Năm",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.05,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          listSitterService[listSitterService.indexWhere(
                                  (element) =>
                                      element.id == sitterService.id)] =
                              SitterServiceRequestModel(
                                  servicePrice:
                                      int.parse(_hobPriceController.text),
                                  exp: int.parse(_workExpController.text),
                                  id: service.id);


                          Navigator.pop(context);
                        },
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
            ));
      }),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  _chooseService(BuildContext context) {
    var size = MediaQuery.of(context).size;
    AlertDialog alert = AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      content: StatefulBuilder(builder: (context, setState) {
        _setState = setState;

        return Container(
          padding: EdgeInsets.all(size.width * 0.03),
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FutureBuilder<ServiceModel>(
              future: serviceList,
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
                                          listSitterService.removeWhere(
                                              (element) =>
                                                  element.id ==
                                                  snapshot
                                                      .data!.data[index].id);
                                          listSelectedService.remove(
                                              snapshot.data!.data[index]);
                                          _setState = setState;
                                          Navigator.pop(context);
                                        } else {
                                          listSelectedService
                                              .add(snapshot.data!.data[index]);
                                          Navigator.pop(context);
                                          _addSitterService(context,
                                              snapshot.data!.data[index]);
                                        }
                                      } else {
                                        listSelectedService
                                            .add(snapshot.data!.data[index]);
                                        Navigator.pop(context);
                                        _addSitterService(context,
                                            snapshot.data!.data[index]);
                                      }
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
              }),
        );
      }),
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

  late File imageFileCert;
  XFile? pickedFileCert;
  UploadTask? uploadTaskCert;
  bool isCertCheck = false;

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

  _getCertImageFromGallery() async {
    pickedFileCert = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    ));
    if (pickedFileCert != null) {
      setState(() {
        imageFileCert = File(pickedFileCert!.path);
        isCertCheck = true;
      });
    }
    final path = 'els_images/${pickedFileCert!.name}';
    final file = File(pickedFileCert!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskCert = ref.putFile(file);

    final snapshot = await uploadTaskCert!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    certURL = urlDownload;
  }

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

    final path = 'els_images/${pickedFileFrontID!.name}';
    final file = File(pickedFileFrontID!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskFrontID = ref.putFile(file);

    final snapshot = await uploadTaskFrontID!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    frontIDImage = urlDownload;
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
    final path = 'els_images/${pickedFileBackID!.name}';
    final file = File(pickedFileBackID!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskBackID = ref.putFile(file);

    final snapshot = await uploadTaskBackID!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    backIDImage = urlDownload;
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
    final path = 'els_images/${pickedFileFace!.name}';
    final file = File(pickedFileFace!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskFace = ref.putFile(file);

    final snapshot = await uploadTaskFace!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    avatarImage = urlDownload;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorConstant.onboard7,
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
                                          "Đăng ký để tham gia với chúng tôi",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: size.width * 0.05,
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
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            bottom: size.height * 0.03,
                            left: size.width * 0.05,
                            right: size.width * 0.05,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                    cursorColor: ColorConstant.purple900,
                                    decoration: InputDecoration(
                                      hintText: "Họ và tên",
                                      hintStyle: TextStyle(
                                        fontSize: size.width * 0.04,
                                      ),
                                      errorText: snapshot.hasError
                                          ? snapshot.error.toString()
                                          : null,
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: ColorConstant.purple900),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: StreamBuilder(
                                    stream: bloc.phone,
                                    builder: (context, snapshot) => TextField(
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.black),
                                          controller: _phoneController,
                                          keyboardType: TextInputType.number,
                                          cursorColor: ColorConstant.purple900,
                                          decoration: InputDecoration(
                                            hintText: "Số điện thoại",
                                            hintStyle: TextStyle(
                                              fontSize: size.width * 0.04,
                                            ),
                                            errorText: snapshot.hasError
                                                ? snapshot.error.toString()
                                                : null,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color:
                                                      ColorConstant.purple900),
                                            ),
                                          ),
                                        )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: StreamBuilder(
                                    stream: bloc.email,
                                    builder: (context, snapshot) => TextField(
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.black),
                                          controller: _emailController,
                                          cursorColor: ColorConstant.purple900,
                                          decoration: InputDecoration(
                                            hintText: "Email",
                                            hintStyle: TextStyle(
                                              fontSize: size.width * 0.04,
                                            ),
                                            errorText: snapshot.hasError
                                                ? snapshot.error.toString()
                                                : null,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color:
                                                      ColorConstant.purple900),
                                            ),
                                          ),
                                        )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Giới tính: ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: size.width * 0.04,
                                          color: Colors.black),
                                    ),
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
                                              DatePicker.showDatePicker(context,
                                                  //showDateTime to pick time
                                                  showTitleActions: true,
                                                  maxTime: DateTime.now(),
                                                  onChanged: (date) {},
                                                  onConfirm: (date) {
                                                String dateInput =
                                                    '${date.year}-${(date.month >= 10) ? date.month : '0${date.month}'}-${(date.day >= 10) ? date.day : '0${date.day}'}';
                                                _changeDob(dateInput);
                                              },
                                                  currentTime: DateTime.now(),
                                                  locale: LocaleType.vi);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .purple900,
                                                        width: 1),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: size.width * 0.048,
                                                      right: size.width * 0.048,
                                                      top: size.height * 0.02,
                                                      bottom:
                                                          size.height * 0.02,
                                                    ),
                                                    child: Image.asset(
                                                        ImageConstant
                                                            .imgCalendar,
                                                        color: ColorConstant
                                                            .purple900),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: size.width * 0.03),
                                                Text('Ngày sinh: $dob'),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: size.height * 0.01),
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
                                  top: size.height * 0.01,
                                ),
                                child: StreamBuilder(
                                    stream: bloc.id,
                                    builder: (context, snapshot) => TextField(
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.black),
                                          controller: _idNumberController,
                                          keyboardType: TextInputType.number,
                                          cursorColor: ColorConstant.purple900,
                                          decoration: InputDecoration(
                                            hintText: "Số CMND/CCCD",
                                            hintStyle: TextStyle(
                                              fontSize: size.width * 0.04,
                                            ),
                                            errorText: snapshot.hasError
                                                ? snapshot.error.toString()
                                                : null,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color:
                                                      ColorConstant.purple900),
                                            ),
                                          ),
                                        )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.03,
                                ),
                                child: Text(
                                  "Tải lên ảnh CMND/CCCD - Khuôn mặt",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray900,
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              StreamBuilder(
                                  stream: bloc.idImage,
                                  builder: (context, snapshot) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.01,
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
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "CMND/CCCD mặt trước",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray900,
                                                        fontSize: 13,
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
                                                          primary: ColorConstant
                                                              .purple900,
                                                          textStyle: TextStyle(
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
                                                        ? const SizedBox()
                                                        : Container(
                                                            width: size.width *
                                                                0.4,
                                                            height:
                                                                size.height *
                                                                    0.12,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: size
                                                                            .height *
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
                                                                fit:
                                                                    BoxFit.fill,
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
                                                      "CMND/CCCD mặt sau",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray900,
                                                        fontSize: 13,
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
                                                          primary: ColorConstant
                                                              .purple900,
                                                          textStyle: TextStyle(
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
                                                        ? const SizedBox()
                                                        : Container(
                                                            width: size.width *
                                                                0.4,
                                                            height:
                                                                size.height *
                                                                    0.12,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: size
                                                                            .height *
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
                                                                fit:
                                                                    BoxFit.fill,
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray900,
                                                        fontSize: 13,
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
                                                          primary: ColorConstant
                                                              .purple900,
                                                          textStyle: TextStyle(
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
                                                        ? const SizedBox()
                                                        : Container(
                                                            width: size.height *
                                                                0.12,
                                                            height:
                                                                size.height *
                                                                    0.12,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: size
                                                                            .height *
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
                                                                fit:
                                                                    BoxFit.fill,
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
                                                      color: Color(0xffCB4847),
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
                                  top: size.height * 0.01,
                                ),
                                child: StreamBuilder(
                                    stream: bloc.address,
                                    builder: (context, snapshot) => TextField(
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.black),
                                          controller: _addressController,
                                          cursorColor: ColorConstant.purple900,
                                          decoration: InputDecoration(
                                            hintText: "Địa chỉ",
                                            hintStyle: TextStyle(
                                              fontSize: size.width * 0.04,
                                            ),
                                            errorText: snapshot.hasError
                                                ? snapshot.error.toString()
                                                : null,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1,
                                                  color:
                                                      ColorConstant.purple900),
                                            ),
                                          ),
                                        )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.03,
                                ),
                                child: Text(
                                  "Chứng chỉ chuyên môn (nếu có)",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray900,
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                  left: size.width * 0.03,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _addCertifiCate(context);
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        ImageConstant.imgIconAdd,
                                        height: size.width * 0.03,
                                        width: size.width * 0.03,
                                        color: ColorConstant.purple900,
                                      ),
                                      SizedBox(width: size.width * 0.015),
                                      Text(
                                        "Thêm chứng chỉ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.purple900,
                                          fontSize: 13,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                ),
                                child: ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listCert.length,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: size.height * 0.01);
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    // final TextEditingController _servicePrice = TextEditingController();
                                    // final TextEditingController _year = TextEditingController();

                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(listCert[index].name),
                                        SizedBox(width: size.width * 0.05),
                                        Text(
                                          "Xóa",
                                          style: TextStyle(
                                            color: ColorConstant.purple900,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.03,
                                ),
                                child: Text(
                                  "Dịch vụ có thể thực hiện",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray900,
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (listSitterService.isNotEmpty) {
                                            for (ServiceDataModel service
                                                in listSelectedService) {
                                              bool addedService = false;
                                              for (SitterServiceRequestModel sitterService
                                                  in listSitterService) {
                                                if (service.id ==
                                                    sitterService.id) {
                                                  addedService = true;
                                                }
                                              }
                                              if (!addedService) {
                                                listSelectedService
                                                    .remove(service);
                                              }
                                            }
                                          } else {
                                            listSelectedService.clear();
                                          }

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
                                            color: ColorConstant.purple900,
                                          ),
                                          SizedBox(width: size.width * 0.015),
                                          Text(
                                            "Chọn dịch vụ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.purple900,
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
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.01,
                                        left: size.width * 0.03,
                                      ),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listSitterService.length,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: size.height * 0.02);
                                      },
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        // final TextEditingController _servicePrice = TextEditingController();
                                        // final TextEditingController _year = TextEditingController();

                                        return Container(
                                          padding:
                                              EdgeInsets.all(size.width * 0.03),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: ColorConstant.purple900,
                                              width: 2,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '*${listSelectedService.where((element) => element.id == listSitterService[index].id).toList()[0].name}:',
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.01,
                                                  left: size.width * 0.03,
                                                ),
                                                child: Text(
                                                  'Giá: ${listSitterService[index].servicePrice} VNĐ/${listSelectedService.where((element) => element.id == listSitterService[index].id).toList()[0].duration} phút',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.01,
                                                  left: size.width * 0.03,
                                                ),
                                                child: Text(
                                                  'Kinh nghiệm làm việc: ${listSitterService[index].exp} năm',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.height * 0.01,
                                                    left: size.width * 0.03,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _updateSitterService(
                                                                context,
                                                                listSitterService[
                                                                    index]);
                                                          });
                                                        },
                                                        child: Text(
                                                          "Chỉnh sửa",
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .purple900,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: size.width *
                                                              0.08),
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            listSelectedService
                                                                .removeWhere((element) =>
                                                                    element
                                                                        .id ==
                                                                    listSitterService[
                                                                            index]
                                                                        .id);
                                                            listSitterService
                                                                .remove(
                                                                    listSitterService[
                                                                        index]);
                                                          });
                                                        },
                                                        child: Text(
                                                          "Xóa",
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .purple900,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
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
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                ),
                                child: StreamBuilder(
                                    stream: bloc.description,
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
                                              border: const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xffCED0D2),
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)))),
                                        )),
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
                                  top: size.height * 0.05,
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
                                        Navigator.pushNamed(
                                            context, '/loginScreen');
                                      },
                                      child: Text(
                                        'Đăng nhập',
                                        style: TextStyle(
                                          color: ColorConstant.black900,
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
    String gender = _genderController.text.trim();
    String phone = _phoneController.text.toString().trim();
    String address = _addressController.text.trim();
    String email = _emailController.text.trim();
    String id = _idNumberController.text.trim();
    String description = _personalDescriptionController.text.trim();
    bool isValid = false;
    bool createSuccess = false;
    if (_isGenderMale = true) {
      gender = "Nam";
    } else {
      gender = "Nữ";
    }

    UserIDImageModel userIdImage = UserIDImageModel(
        fontIdImgUrl: frontIDImage,
        backIdImgUrl: backIDImage,
        avatarImgUrl: avatarImage);
    isValid = bloc.isValidInput(fullname, email, phone, dob, id, address,
        gender, userIdImage, description);
    if (isValid) {
      createSuccess = await bloc.register(fullname, phone, email, gender, dob,
          id, address, listSitterService, userIdImage, listCert, description);
      if (createSuccess) {
        // ignore: use_build_context_synchronously

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SuccessScreen(
                      alert: 'Đăng ký tài khoản thành công',
                      detail: 'Vui lòng đợi phản hồi từ email',
                      buttonName: 'Tiếp tục',
                      navigatorName: '/loginScreen',
                    )));
      } else {
        // ignore: use_build_context_synchronously
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FailScreen(
                    alert: 'Đăng ký tài khoản thất bại',
                    detail:
                        'Tài khoản chưa được đăng ký, vui lòng nhập lại email',
                    buttonName: 'Quay lại',
                    navigatorName: '/signUpScreen')));
      }
    }
  }

  void showDupAlertDialog(BuildContext context) {
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
        "Dịch vụ này đã được thêm\nVui lòng chọn dịch vụ khác\nhoặc chuyển đến \"Dịch vụ có thể thực hiện\" để chỉnh sửa.",
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
