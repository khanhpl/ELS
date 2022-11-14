import 'package:els_sitter/core/models/elder_data_model.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../blocs/elder_blocs.dart';

class ElderDetailWidget extends StatefulWidget {
  ElderDataModel elder;

  ElderDetailWidget({super.key, required this.elder});

  @override
  State<ElderDetailWidget> createState() =>
      _ElderDetailWidgetState(elder: this.elder);
}

class _ElderDetailWidgetState extends State<ElderDetailWidget> {
  ElderDataModel elder;

  _ElderDetailWidgetState({required this.elder});

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _dobController = TextEditingController();

  final TextEditingController _noteController = TextEditingController();

  final TextEditingController _healthStatusController = TextEditingController();

  final TextEditingController _genderController = TextEditingController();
  bool _isAllergy = false;
  bool _isMale = false;
  bool _isFemale = false;
  String dob = "";

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _nameController.text = elder.name;
      _dobController.text = filterDob(elder.dob.toString());
      dob = _dobController.text;
      _noteController.text = elder.note;
      _healthStatusController.text = elder.healthStatus;
      _genderController.text = elder.gender.toString();
      if (elder.gender.toString() == "Nam") {
        _isMale = true;
        _isFemale = false;
      }
      if (elder.gender.toString() == "Nữ") {
        _isMale = false;
        _isFemale = true;
      }
      _isAllergy = elder.isAllergy;
    });
  }

  filterDob(String dob) {
    var parts = dob.split(" ");
    var prefix = parts[0].trim();
    return prefix;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                "Thông tin chi tiết",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.whiteA700,
                  fontSize: 24,
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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  bottom: size.height * 0.03,
                  left: size.width * 0.03,
                  right: size.height * 0.03),
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
                      SizedBox(
                        width: size.width,
                        child: Text(
                          "Thông Tin\nNgười Người được chăm sóc",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03,),
                      Text(
                        "Họ và Tên",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.purple900,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
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
                            controller: _nameController,
                            enabled: false,
                            decoration: InputDecoration(
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              hintText: "",
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
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.01,
                        ),
                        child: StreamBuilder(
                            stream: null,
                            builder: (context, snapshot) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: size.height * 0.07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Colors.black12, width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.048,
                                            right: size.width * 0.048,
                                          ),
                                          child: Image.asset(
                                            ImageConstant.imgCalendar,
                                            color: ColorConstant.purple900,
                                          ),
                                        ),
                                        Text(
                                          dob,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
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
                          top: size.height * 0.02,
                        ),
                        child: Text(
                          "Giới tính",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                              value: _isMale,
                              onChanged: (value) {
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
                              value: _isFemale,
                              onChanged: (value) {
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
                          "Tình trạng sức khoẻ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                            controller: _healthStatusController,
                            enabled: false,
                            decoration: InputDecoration(
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              hintText: "",
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
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: Text(
                          "Dị ứng",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                              value: _isAllergy,
                              onChanged: (value) {
                              },
                              checkColor: ColorConstant.purple900,
                              activeColor: Colors.white,
                            ),
                            Text(
                              'Có dị ứng',
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
                          "Ghi chú",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                                  controller: _noteController,
                                  enabled: false,
                                  decoration: InputDecoration(
                                      hintText: "Những lưu ý cho chăm sóc viên",
                                      errorText: snapshot.hasError
                                          ? snapshot.error.toString()
                                          : null,
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffCED0D2),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)))),
                                )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeDob(String date) async {
    setState(() {
      dob = date;
    });
  }
}
