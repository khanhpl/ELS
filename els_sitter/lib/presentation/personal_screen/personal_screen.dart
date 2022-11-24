import 'package:els_sitter/blocs/sitter_bloc.dart';
import 'package:els_sitter/core/models/sitter_data_model.dart';
import 'package:els_sitter/core/models/sitter_detail_data_model.dart';
import 'package:els_sitter/core/models/sitter_detail_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import 'package:els_sitter/core/utils/globals.dart' as globals;

import '../../widgets/failWidget.dart';
import '../../widgets/successWidget.dart';

class PersonalScreen extends StatefulWidget {
  SitterDetailDataModel sitter;

  PersonalScreen({super.key, required this.sitter});

  @override
  State<PersonalScreen> createState() =>
      _PersonalScreenState(sitter: this.sitter);
}

class _PersonalScreenState extends State<PersonalScreen> {
  SitterDetailDataModel sitter;

  _PersonalScreenState({required this.sitter});

  SitterBlocs blocs = SitterBlocs();
  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _dobController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _genderController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _fullNameController.text = sitter.fullName;
      _emailController.text = sitter.email;
      _genderController.text = globals.curUser!.data.gender;
      _phoneController.text = sitter.phone;
      _addressController.text = sitter.address;
      _dobController.text = sitter.dob.toString().split(" ")[0];
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
            Navigator.pushNamed(context, '/accountScreen');
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
                Container(
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(sitter.avatarUrl),
                      fit: BoxFit.fill,
                    ),
                    color: ColorConstant.gray400,
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.only(
                        left: size.width * 0.03,
                        top: size.height * 0.1,
                      ),
                      color: ColorConstant.purple900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        height: size.width * 0.06,
                        width: size.width * 0.06,
                        decoration: BoxDecoration(
                          color: ColorConstant.purple900,
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.01),
                                child: Image.asset(
                                  ImageConstant.imgTicket14X14,
                                  width: size.width * 0.02,
                                  height: size.width * 0.02,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                      ),
                      child: Text(
                        "Họ và Tên",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.015,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _fullNameController,
                          cursorColor: ColorConstant.purple900,
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
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Email",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.015,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _emailController,
                          cursorColor: ColorConstant.purple900,
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
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Năm sinh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.015,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _dobController,
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
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Giới tính",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.015,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
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
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Địa chỉ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.015,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _addressController,
                          cursorColor: ColorConstant.purple900,
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
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Số điện thoại",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.015,
                      ),
                      child: StreamBuilder(
                        stream: null,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04, color: Colors.black),
                          controller: _phoneController,
                          cursorColor: ColorConstant.purple900,
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
                        top: size.height * 0.02,
                      ),
                      child: Text(
                        "Dịch vụ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray402,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListView.separated(
                      padding: EdgeInsets.only(
                        top: size.width * 0.03,
                        left: size.width * 0.03,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: sitter.sitterServicesResponseDtos.length,
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: size.height * 0.02);
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '*${sitter.sitterServicesResponseDtos[index].name}'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Giá tiền: ${sitter.sitterServicesResponseDtos[index].price.ceil()} VNĐ/ phút'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Kinh nghiệm làm việc: ${sitter.sitterServicesResponseDtos[index].exp} năm'),
                            ),
                          ],
                        );
                      },
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
                            save();
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

  save() async {
    String fullname = _fullNameController.text.trim();
    String email = _emailController.text.trim();
    String dob = _dobController.text.trim();
    String gender = _genderController.text.trim();
    String address = _addressController.text.trim();
    String phone = _phoneController.text.trim();

    bool isSave = false;
    isSave = await blocs.updateSitterInfo(
        fullname, dob, gender, phone, address, email, sitter.avatarUrl);
    if (isSave) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                    alert: 'Thay đổi thông tin\n'
                        'thành công',
                    detail:
                        'Thông tin cá nhân đã thay đổi thành công vui lòng ấn tiếp tục để về trang cá nhân',
                    buttonName: 'Tiếp tục',
                    navigatorName: '/accountScreen',
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Thay đổi thông tin thất bại',
                  detail:
                      'Thông tin cá nhân chưa được thay đổi vui lòng nhập lại thông tin cá nhân',
                  buttonName: 'Quay lại',
                  navigatorName: '/accountScreen')));
    }
  }
}
