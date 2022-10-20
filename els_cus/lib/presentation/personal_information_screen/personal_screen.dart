import 'package:els_cus_mobile/blocs/personal_information_bloc.dart';
import 'package:flutter/material.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';

class PersonalScreen extends StatelessWidget {
  PersonalScreen({super.key});

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  PersonalInfoBloc bloc = PersonalInfoBloc();

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
        backgroundColor: ColorConstant.whiteA700,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            ImageConstant.imgArrowleft,
            height: size.height * 0.024,
            width: size.width * 0.03,
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
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
                color: ColorConstant.black900,
                fontSize: 34,
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
                          controller: _fullNameController,
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
                          controller: _emailController,
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
                          controller: _districtController,
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
                        "Tỉnh/Thành Phố",
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
                          controller: _cityController,
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.03,
                        top: size.height*0.05,
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
    String district = _districtController.text.trim();
    String city = _cityController.text.trim();
    String address = _addressController.text.trim();
    String phone = _phoneController.text.trim();

    bloc.printAll(fullname, email, dob, district, city, address, phone);
  }
}