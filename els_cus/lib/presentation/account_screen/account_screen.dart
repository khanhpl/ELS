import 'dart:io';

import 'package:els_cus_mobile/blocs/image_bloc.dart';
import 'package:els_cus_mobile/fire_base/provider/google_sign_in_provider.dart';
import 'package:els_cus_mobile/presentation/personal_information_screen/personal_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:els_cus_mobile/blocs/personal_information_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/models/customer_detail_model.dart';
import '../../core/utils/globals.dart' as globals;

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String fullname = "";
  String email = "";
  String avatarURL = "";

  final Future<CustomerDetailModel> customer =
      PersonalInfoBloc().getCustomerDetailByEmail();



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            if (snapshot.hasData) {
              fullname = snapshot.data!.data.fullName;
              email = snapshot.data!.data.email;
              avatarURL = snapshot.data!.data.avatarUrl;
              return SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        // margin: EdgeInsets.only(
                        // ),
                        decoration: BoxDecoration(
                          color: ColorConstant.BG,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.03,
                                top: size.height * 0.03,
                                right: size.width * 0.03,
                                bottom: size.height * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: size.width * 0.15,
                                    height: size.width * 0.15,
                                    decoration: BoxDecoration(
                                      // image: DecorationImage(
                                      //   image: NetworkImage(imgUrl!),
                                      //   fit: BoxFit.fill,
                                      // ),
                                      color: ColorConstant.gray400,
                                      borderRadius: BorderRadius.circular(
                                        43,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.only(
                                          left: size.width * 0.03,
                                          top: size.height * 0.03,
                                        ),
                                        color: ColorConstant.purple900,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          height: size.width * 0.05,
                                          width: size.width * 0.05,
                                          decoration: BoxDecoration(
                                            color: ColorConstant.purple900,
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      size.width * 0.01),
                                                  child: Image.asset(
                                                    ImageConstant
                                                        .imgTicket14X14,
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.03,
                                      top: size.height * 0.01,
                                      bottom: size.width * 0.03,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: size.width * 0.03,
                                          ),
                                          child: Text(
                                            fullname,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: 24,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.005,
                                          ),
                                          child: Text(
                                            email,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: 15,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PersonalScreen(
                                          cus: snapshot.data!.data),
                                    ));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Thông tin cá nhân",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/elderScreen');
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Người thân",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/historyScreen');
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Lịch sử đặt lịch",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.03,
                                top: size.height * 0.02,
                                right: size.width * 0.03,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Yêu Thích",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.00,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Image.asset(
                                        ImageConstant.imgArrowrightGray400,
                                        width: size.width * 0.02,
                                        height: size.width * 0.03,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.03,
                                top: size.height * 0.02,
                                right: size.width * 0.03,
                              ),
                              child: Text(
                                "Thẻ thanh toán",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 1.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.01,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.02,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Thẻ chính",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: 15,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: size.height * 0.005,
                                            ),
                                            child: Text(
                                              "9432 **** **** ****",
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.03,
                                top: size.height * 0.01,
                                right: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.01,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.02,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Thẻ Phụ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: 15,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: size.height * 0.005,
                                            ),
                                            child: Text(
                                              "9432 **** **** ****",
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Thêm thẻ mới",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.purple900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgPlus55X55,
                                          width: size.width * 0.03,
                                          height: size.width * 0.04,
                                          color: ColorConstant.purple900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.01,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.03,
                                top: size.height * 0.02,
                                right: size.width * 0.03,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Quản lý tin đăng",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.00,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Image.asset(
                                        ImageConstant.imgArrowrightGray400,
                                        width: size.width * 0.02,
                                        height: size.width * 0.03,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/settingScreen');
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Cài đặt ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.logout();

                                  Navigator.pushNamed(
                                      context, '/loginWithGoogleNav');
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  right: size.width * 0.03,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Đăng xuất",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: size.width,
                              margin: EdgeInsets.only(
                                left: size.width * 0.015,
                                top: size.height * 0.015,
                                right: size.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray50,
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //
                            //     left: size.width*0.03,
                            //     top: size.height*0.01,
                            //     right: size.width*0.03,
                            //   ),
                            //   child: Align(
                            //     alignment: Alignment.center,
                            //     child: Container(
                            //       width: double.infinity,
                            //       decoration: BoxDecoration(
                            //         color: ColorConstant.whiteA700,
                            //         borderRadius: BorderRadius.circular(
                            //           10,
                            //         ),
                            //         border: Border.all(
                            //           color: ColorConstant.gray301,
                            //           width: 1,
                            //         ),
                            //       ),
                            //       child: Column(
                            //         mainAxisSize: MainAxisSize.min,
                            //         crossAxisAlignment: CrossAxisAlignment.center,
                            //         mainAxisAlignment: MainAxisAlignment.end,
                            //         children: [
                            //           Align(
                            //             alignment: Alignment.centerRight,
                            //             child: Padding(
                            //               padding: EdgeInsets.only(
                            //                 left: size.width*0.03,
                            //                 top: size.height*0.01,
                            //                 right: size.width*0.03,
                            //               ),
                            //               child: Image.asset(ImageConstant.imgArrowrightGray600,
                            //                 width: size.width*0.03,
                            //                 height: size.width*0.03,
                            //               ),
                            //             ),
                            //           ),
                            //           Align(
                            //             alignment: Alignment.center,
                            //             child: Text(
                            //               "Đánh giá ứng dụng",
                            //               overflow: TextOverflow.ellipsis,
                            //               textAlign: TextAlign.left,
                            //               style: TextStyle(
                            //                 color: ColorConstant.bluegray900,
                            //                 fontSize: 24,
                            //                 fontFamily: 'Montserrat',
                            //                 fontWeight: FontWeight.w600,
                            //               ),
                            //             ),
                            //           ),
                            //           Align(
                            //             alignment: Alignment.center,
                            //             child: Container(
                            //               width: size.width*0.9,
                            //               height: size.height*0.03,
                            //               child: PinCodeTextField(
                            //                 appContext: context,
                            //                 length: 5,
                            //                 obscureText: false,
                            //                 obscuringCharacter: '*',
                            //                 keyboardType: TextInputType.number,
                            //                 autoDismissKeyboard: true,
                            //                 enableActiveFill: true,
                            //                 inputFormatters: [
                            //                   FilteringTextInputFormatter.digitsOnly,
                            //                 ],
                            //                 onChanged: (value) {},
                            //                 pinTheme: PinTheme(
                            //                   fieldHeight: size.width*0.02,
                            //                   fieldWidth: size.width*0.03,
                            //                   shape: PinCodeFieldShape.circle,
                            //                   selectedFillColor:
                            //                   ColorConstant.fromHex("#1212121D"),
                            //                   activeFillColor:
                            //                   ColorConstant.fromHex("#1212121D"),
                            //                   inactiveFillColor:
                            //                   ColorConstant.fromHex("#1212121D"),
                            //                   inactiveColor:
                            //                   ColorConstant.fromHex("#1212121D"),
                            //                   selectedColor:
                            //                   ColorConstant.fromHex("#1212121D"),
                            //                   activeColor:
                            //                   ColorConstant.fromHex("#1212121D"),
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
          future: customer,
        ),
      ),
    );
  }
}
