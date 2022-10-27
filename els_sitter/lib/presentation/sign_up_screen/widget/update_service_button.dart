import 'package:flutter/material.dart';

Widget updateServiceButton(BuildContext context, bool isChoose){
  var size = MediaQuery.of(context).size;
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(
        right: size.width * 0.03,
      ),
      child: isChoose
          ? Icon(Icons.maximize_outlined)
          : Icon(Icons.add),
    ),
  );
}