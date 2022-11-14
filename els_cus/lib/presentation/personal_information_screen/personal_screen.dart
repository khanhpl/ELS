import 'package:els_cus_mobile/blocs/personal_information_bloc.dart';
import 'package:els_cus_mobile/core/models/customer_detail_data_model.dart';
import 'package:flutter/material.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/core/utils/globals.dart' as globals;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../core/models/customer_detail_model.dart';

class PersonalScreen extends StatefulWidget {
  CustomerDetailDataModel cus;

  PersonalScreen({super.key, required this.cus});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState(cus: this.cus);
}

class _PersonalScreenState extends State<PersonalScreen> {
  CustomerDetailDataModel cus;

  _PersonalScreenState({required this.cus});

  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _dobController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  PersonalInfoBloc bloc = PersonalInfoBloc();
  String dob = "";
  String name = "";
  String email = "";
  String address = "";
  String phone = "";
  bool _isMale = false;
  bool _isFemale = false;

  filterDob(String dob) {
    var parts = dob.split(" ");
    var prefix = parts[0].trim();
    return prefix;
  }

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
        "Thay đổi thông tin thành công",
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
        "Thay đổi thông tin thất bại",
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
  void initState() {
    setState(() {
      _fullNameController.text = cus.fullName;
      _emailController.text = cus.email;
      _dobController.text = filterDob(cus.dob.toString());
      dob = _dobController.text;
      _addressController.text = cus.address;
      _phoneController.text = cus.phone;
      if (globals.curUser!.data.gender == "Nam") {
        _isMale = true;
        _isFemale = false;
      }
      if (globals.curUser!.data.gender == "Nữ") {
        _isMale = false;
        _isFemale = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement createState
    return Scaffold(
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
              "Thông tin cá nhân",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorConstant.whiteA700,
                fontSize: 28,
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
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _fullNameController,
                          cursorColor: ColorConstant.purple900,
                          decoration: InputDecoration(
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            hintText: "",
                            prefixIcon: SizedBox(
                                width: size.width * 0.05,
                                child: Image.asset(
                                  ImageConstant.imgUser,
                                  color: ColorConstant.purple900,
                                  height: size.height * 0.03,
                                )),
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
                        "Email",
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
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _emailController,
                          cursorColor: ColorConstant.purple900,
                          decoration: InputDecoration(
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            hintText: "",
                            prefixIcon: SizedBox(
                                width: size.width * 0.05,
                                child: Image.asset(
                                  ImageConstant.imgEmail,
                                  color: ColorConstant.purple900,
                                  height: size.height * 0.01,
                                  width: size.width * 0.015,
                                )),
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
                        "Ngày sinh",
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
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     top: size.height * 0.02,
                    //   ),
                    //   child: Text(
                    //     "Số CCCD/CMND",
                    //     overflow: TextOverflow.ellipsis,
                    //     textAlign: TextAlign.left,
                    //     style: TextStyle(
                    //       color: ColorConstant.purple900,
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w500,
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
                    //           fontSize: size.width * 0.04, color: Colors.black),
                    //       // controller: _idController,
                    //       cursorColor: ColorConstant.purple900,
                    //       decoration: InputDecoration(
                    //         errorText: snapshot.hasError
                    //             ? snapshot.error.toString()
                    //             : null,
                    //         hintText: "",
                    //         prefixIcon: SizedBox(
                    //             width: size.width * 0.05,
                    //             child: Image.asset(
                    //               ImageConstant.imgUser,
                    //               color: ColorConstant.purple900,
                    //               height: size.height * 0.03,
                    //             )),
                    //         border: const OutlineInputBorder(
                    //             borderSide: BorderSide(
                    //                 color: Color(0xffCED0D2), width: 1),
                    //             borderRadius:
                    //                 BorderRadius.all(Radius.circular(6))),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //             width: 1,
                    //             color: ColorConstant.purple900,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Địa chỉ",
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
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _addressController,
                          cursorColor: ColorConstant.purple900,
                          decoration: InputDecoration(
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            hintText: "",
                            prefixIcon: SizedBox(
                                width: size.width * 0.05,
                                child: Image.asset(
                                  ImageConstant.imgLocation16X13,
                                  color: ColorConstant.purple900,
                                  height: size.height * 0.03,
                                )),
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
                        "Số điện thoại",
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
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _phoneController,
                          cursorColor: ColorConstant.purple900,
                          decoration: InputDecoration(
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            hintText: "",
                            prefixIcon: SizedBox(
                                width: size.width * 0.05,
                                child: Image.asset(
                                  ImageConstant.imgCall,
                                  color: ColorConstant.purple900,
                                  height: size.height * 0.02,
                                )),
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
                        left: size.width * 0.03,
                        top: size.height * 0.05,
                        right: size.width * 0.03,
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ); //Scaffold
  }

  void _changeDob(String date) async {
    setState(() {
      dob = date;
    });
  }

  save() async {
    String fullname = _fullNameController.text.trim();
    String email = _emailController.text.trim();
    String dob = _dobController.text.trim();
    String address = _addressController.text.trim();
    String phone = _phoneController.text.trim();
    String gender = "";
    if (_isMale) {
      gender = "Nam";
    } else {
      gender = "Nữ";
    }
    String frontIdImgUrl = "";
    String backIdImgUrl = "";
    String avatarImgUrl = "";
    bool updateSuccess = false;
    updateSuccess = await bloc.updateInfo(fullname, gender, dob, address, phone,
        frontIdImgUrl, backIdImgUrl, avatarImgUrl);
    if (updateSuccess) {
      globals.curUser!.data.setDob(DateTime.parse(dob));
      showSuccessAlertDialog(context);
    } else {
      showFailAlertDialog(context);
    }
  }
}
