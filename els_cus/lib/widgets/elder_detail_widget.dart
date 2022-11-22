import 'package:els_cus_mobile/core/models/elder_data_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/widgets/failWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../blocs/elder_blocs.dart';
import '../core/models/elder_model.dart';
import 'SuccessWidget.dart';

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

  ElderBlocs bloc = ElderBlocs();

  void showSaveAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Hủy",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        save();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "CẢNH BÁO",
      ),
      content: const Text(
        "Xác nhận lưu thông tin vừa thay đổi",
      ),
      actions: [
        cancelButton,
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

  void showDeleteAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Hủy",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        removeElder();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Cảnh báo",
      ),
      content: const Text(
        "Xác nhận xóa thông tin của người thân này",
      ),
      actions: [
        cancelButton,
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
                "Thông tin người thân",
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
                                  GestureDetector(
                                    onTap: () {
                                      DatePicker.showDatePicker(context,
                                          //showDateTime to pick time
                                          showTitleActions: true,
                                          maxTime: DateTime.now(),
                                          minTime: DateTime(1900),
                                          onChanged: (date) {},
                                          onConfirm: (date) {
                                        String dateInput =
                                            '${date.year}-${(date.month >= 10) ? date.month : '0${date.month}'}-${(date.day >= 10) ? date.day : '0${date.day}'}';
                                        _changeDob(dateInput);
                                      },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.vi);
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: size.height * 0.07,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
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
                                setState(() {
                                  _isMale = true;
                                  _isFemale = false;
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
                              value: _isFemale,
                              onChanged: (value) {
                                setState(() {
                                  _isMale = false;
                                  _isFemale = true;
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
                                setState(() {
                                  if (_isAllergy) {
                                    _isAllergy = false;
                                  } else {
                                    _isAllergy = true;
                                  }
                                });
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
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: size.width * 0.375,
                              margin: EdgeInsets.only(
                                  left: size.width * 0.025,
                                  right: size.width * 0.025,
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDeleteAlertDialog(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: ColorConstant.whiteA700,
                                      textStyle: TextStyle(
                                        fontSize: size.width * 0.045,
                                      ),
                                      side: BorderSide(
                                        width: 1.5,
                                        color: ColorConstant.purple900,
                                      )),
                                  child: Text(
                                    "Xóa",
                                    style: TextStyle(
                                      color: ColorConstant.purple900,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * 0.05),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: size.width * 0.375,
                              margin: EdgeInsets.only(
                                  left: size.width * 0.025,
                                  right: size.width * 0.025,
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showSaveAlertDialog(context);
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
                          ),
                        ],
                      )
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

  void save() async {
    String fullName = _nameController.text.trim();
    String gender = "";
    if (_isMale) {
      gender = "Nam";
    } else {
      gender = "Nữ";
    }
    String dob = _dobController.text.trim();
    String healthStatus = _healthStatusController.text.trim();
    String note = _noteController.text.trim();
    int id = elder.id;
    bool isAllergy = _isAllergy;
    bool updateSuccess = false;
    updateSuccess = await bloc.updateElder(
        id, fullName, gender, dob, healthStatus, note, isAllergy);
    if (updateSuccess) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                  alert: 'Cập nhật thông tin\n'
                      'thành công',
                  detail:
                      "Thay đổi thông tin thành công vui lòng ấn nút quay lại",
                  buttonName: 'quay lại',
                  navigatorName: '/elderScreen')));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Cập nhật thông tin\n'
                      'thất bại',
                  detail:
                      'Thay đổi thông tin người thân thất bại vui lòng nhấn nút quay lại để về danh sách người thân',
                  buttonName: 'quay lại',
                  navigatorName: '/elderScreen')));
    }
  }

  void removeElder() async {
    int id = elder.id;
    bool removeSuccess = false;
    removeSuccess = await bloc.removeElderByID(id);
    if (removeSuccess) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                  alert: 'Xóa thông tin người thân thành công',
                  detail: "Xóa thông tin thành công vui lòng ấn nút quay lại",
                  buttonName: 'quay lại',
                  navigatorName: '/elderScreen')));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Xóa thông tin người thân thất bại',
                  detail:
                      'Xóa thông tin người thân thất bại, vui lòng ấn nút quay lại để trở về danh sách người thân',
                  buttonName: 'quay lại',
                  navigatorName: '/elderScreen')));
    }
  }

  void _changeDob(String date) async {
    setState(() {
      dob = date;
    });
  }
}
