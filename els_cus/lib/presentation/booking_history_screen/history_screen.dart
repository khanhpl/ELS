import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';

class HistoryBookingScreen extends StatelessWidget {
  const HistoryBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        // bottomOpacity: 0.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.whiteA700,
        leading: GestureDetector(
          onTap: (){
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
              "Lịch sử đặt lịch",
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
    );
  }

}