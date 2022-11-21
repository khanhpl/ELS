import 'package:els_cus_mobile/blocs/elder_blocs.dart';
import 'package:els_cus_mobile/core/models/elder_data_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:els_cus_mobile/core/utils/globals.dart' as globals;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class AddNewElderScreen extends StatefulWidget {
  const AddNewElderScreen({super.key});

  @override
  State<AddNewElderScreen> createState() => _AddNewElderScreenState();
}

class _AddNewElderScreenState extends State<AddNewElderScreen> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _genderController = TextEditingController();

  final TextEditingController _noteController = TextEditingController();

  final TextEditingController _healthStatusController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _dobController = TextEditingController();

  bool _isAllergy = false;
  bool _isMale = false;
  bool _isFemale = false;
  String dob = "Ngày sinh";
  ElderBlocs bloc = ElderBlocs();

  @override
  void initState() {
    setState(() {
      _nameController.text = "";
      _noteController.text = "";
      _healthStatusController.text = "";
      _genderController.text = "";
      _dobController.text = dob;
      if (_isMale = true) {
        _genderController.text = "Nam";
      } else {
        _genderController.text = "Nữ";
      }
      _isAllergy = false;
      _emailController.text = globals.curUser!.data.email;
    });
  }

  void _changeDob(String date) async {
    setState(() {
      dob = date;
    });
  }

  void showCreateAlertDialog(BuildContext context) {
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
        onAddNewElderClick();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "THÊM NGƯỜI THÂN",
      ),
      content: const Text(
        "Xác nhận thêm mới thông tin người thân",
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

  void showSuccessAlertDialog(BuildContext context) {
    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/accountScreen');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text(
        "Thêm thành công người thân mới",
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
        "Thêm người thân mới thất bại",
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
                "Thêm người thân",
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
                            stream: bloc.nameStream,
                            builder: (context, snapshot) => TextField(
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                  controller: _nameController,
                                  cursorColor: ColorConstant.purple900,
                                  decoration: InputDecoration(
                                    errorText: snapshot.hasError
                                        ? snapshot.error.toString()
                                        : null,
                                    hintText: "Họ và tên của người thân",
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffCED0D2), width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: ColorConstant.purple900,
                                      ),
                                    ),
                                  ),
                                )),
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
                            stream: bloc.dobStream,
                            builder: (context, snapshot) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      DatePicker.showDatePicker(
                                          context, //showDateTime to pick time
                                          showTitleActions: true,
                                          maxTime: DateTime.now(),
                                          minTime: DateTime(1900),
                                          onChanged: (date) {},
                                          onConfirm: (date) {
                                        String dateInput =
                                            '${date.year}-${(date.month >= 10) ? date.month : '0' + date.month.toString()}-${(date.day >= 10) ? date.day : '0' + date.day.toString()}';
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
                                                ImageConstant.imgCalendar),
                                          ),
                                          Text(dob),
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
                      Text(
                        "Tình trạng sức khỏe",
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
                            stream: bloc.healthStatusStream,
                            builder: (context, snapshot) => TextField(
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                  controller: _healthStatusController,
                                  cursorColor: ColorConstant.purple900,
                                  decoration: InputDecoration(
                                      hintText:
                                          "Có bệnh nền như tiểu đường, Huyết áp cao",
                                      errorText: snapshot.hasError
                                          ? snapshot.error.toString()
                                          : null,
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffCED0D2),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)))),
                                )),
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
                      Text(
                        "Ghi chú",
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
                            stream: bloc.noteStream,
                            builder: (context, snapshot) => TextField(
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                  controller: _noteController,
                                  cursorColor: ColorConstant.purple900,
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
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.05,
                          right: size.width * 0.03,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              showCreateAlertDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: ColorConstant.purple900,
                              textStyle: TextStyle(
                                fontSize: size.width * 0.045,
                              ),
                            ),
                            child: const Text("Tạo mới"),
                          ),
                        ),
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

  onAddNewElderClick() async {
    String name = _nameController.text.trim();
    String statusHealth = _healthStatusController.text.trim();
    String note = _noteController.text.trim();
    bool isAllergy = _isAllergy;
    String gender = "";
    if (_isMale) {
      gender = "Nam";
    } else {
      gender = "Nữ";
    }
    bool isValidElder = false;
    isValidElder = bloc.isValidElder(name, dob);
    if (isValidElder) {
      bool createSuccess = false;
      createSuccess = await bloc.addNewElder(
          name, gender, dob, statusHealth, note, isAllergy);
      if (createSuccess) {
        print('tạo được rồi');
        showSuccessAlertDialog(context);
      } else {
        print('chưa được');
        showFailAlertDialog(context);
      }
    } else {}
  }
}
