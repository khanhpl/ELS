
import 'package:els_sitter/core/models/elder_data_model.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

Widget ElderItemOnBookingWidget(
    BuildContext context, ElderDataModel elder, String chooseElderID) {
  var size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.3,
    height: size.height * 0.01,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(

        // color: ColorConstant.black900,
        color: (elder.id.toString() == chooseElderID)? ColorConstant.black900 :ColorConstant.gray400,
        width: 1,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (elder.gender == 'Nam')
              ? Text(
                  'Ông',
                  style: TextStyle(
                    color:  (elder.id.toString() == chooseElderID)? ColorConstant.black900 : ColorConstant.gray400,
                  ),
                )
              : Text(
                  'Bà',
                  style: TextStyle(
                    color:  (elder.id.toString() == chooseElderID)? ColorConstant.black900 : ColorConstant.gray400,
                  ),
                ),
          Text(
            elder.name,
            style: TextStyle(
              color:  (elder.id.toString() == chooseElderID)? ColorConstant.black900 : ColorConstant.gray400,
            ),
          ),
        ],
      ),
    ),
  );
}
