import 'dart:ui';

import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

Widget updateServiceButton(BuildContext context, bool isChoose){
  var size = MediaQuery.of(context).size;
  return Container(

    height: size.height*0.09,
    // margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: (isChoose) ? Colors.red : Colors.green,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(5),
        bottomRight: Radius.circular(5),
      ),
      // border: Border.all(
      //   color: ColorConstant.black900,
      //   width: 1,
      // ),
    ),
    child: Align(
      alignment: Alignment.center,
      
      child: Padding(
        padding: EdgeInsets.only(
          // right: size.width * 0.03,
        ),
        child: isChoose
            ? Icon(Icons.remove, color: ColorConstant.whiteA700,)
            : Icon(Icons.add, color: ColorConstant.whiteA700),
      ),
    ),
  );
}