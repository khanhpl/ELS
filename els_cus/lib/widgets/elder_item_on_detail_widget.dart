import 'package:els_cus_mobile/core/models/elder_data_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget ElderItemOnDetailWidget(BuildContext context, ElderDataModel elder) {
  var size = MediaQuery.of(context).size;

  String getAge() {
    String age = "";
    String birthYear = elder.dob.toString().split('-')[0];
    final now = DateTime.now();
    String formatter = DateFormat('yMd').format(now);
    String curYear = formatter.split('/')[2];
    int intAge = int.parse(curYear) - int.parse(birthYear);
    age = intAge.toString();
    return age;
  }
  return Container(
    width: size.width,
    padding: EdgeInsets.all(size.width * 0.02),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffEEE2FF),
    ),
    child: Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.03,
        right: size.width * 0.03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (elder.gender == "Nam")
                ? "Ông: ${elder.name}"
                : "Bà: ${elder.name}",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height*0.005,
            ),
            child: Text(
              "Tuổi: ${getAge()}",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height*0.005,
            ),
            child: Text(
              "Tình trạng: ${elder.healthStatus}",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
