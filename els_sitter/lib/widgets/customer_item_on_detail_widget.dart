
import 'package:els_sitter/core/models/cus_response_dto.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../core/models/sitter_detail_data_model.dart';

// ignore: must_be_immutable
class CusItemOnDetailWidget extends StatelessWidget {
  CustomerResponseDto cus;

  CusItemOnDetailWidget({super.key, required this.cus});
  String getAge() {
    String age = "";
    String birthYear = cus.dob.toString().split('-')[0];
    final now = DateTime.now();
    String formatter = DateFormat('yMd').format(now);
    String curYear = formatter.split('/')[2];
    int intAge = int.parse(curYear) - int.parse(birthYear);
    age = intAge.toString();
    return age;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.all(size.width * 0.02),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffEEE2FF),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              (cus.avatarImgUrl.isNotEmpty) ?
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  top: size.height * 0.01,
                  right: size.width * 0.03,
                  bottom: size.height * 0.01,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray400,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:  NetworkImage(cus.avatarImgUrl) ,
                    fit: BoxFit.fill,
                  ),
                ),
              ) : Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  top: size.height * 0.01,
                  right: size.width * 0.03,
                  bottom: size.height * 0.01,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray400,
                  shape: BoxShape.circle,
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  left: size.width * 0.03,
                  top: size.height * 0.01,
                  bottom: size.height * 0.01,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: size.width * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 1,
                            ),
                            child: Text(
                              cus.fullName,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.008,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          (cus.gender == "Nam")
                              ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.male_outlined,
                                color: Colors.blueAccent,
                                size: 12,
                              ),
                              Text(
                                "Nam",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                              : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.female_outlined,
                                color: Colors.blueAccent,
                                size: 12,
                              ),
                              Text(
                                "Nữ",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 2,
                            width: 2,
                            margin: const EdgeInsets.only(
                              left: 10,
                              top: 6,
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray400,
                              borderRadius: BorderRadius.circular(
                                1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 1,
                            ),
                            child: Text(
                              "${getAge()} Tuổi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 12,
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
      ),
    );
  }
}
