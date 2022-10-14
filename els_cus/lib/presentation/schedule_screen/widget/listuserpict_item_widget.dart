import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListuserpictItemWidget extends StatelessWidget {
  ListuserpictItemWidget();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.only(),
            width: size.width * 0.1,
            height: size.width * 0.1,
            decoration: BoxDecoration(
              color: ColorConstant.gray400,
              borderRadius: BorderRadius.circular(
                40,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height*0.01,
              bottom: size.height*0.01,
              left: size.width * 0.03,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Trần Văn X",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Text(
                      "Thứ hai, 24 tháng 10",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 1,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: size.height*0.01,
                    ),
                    child: Text(
                      "8:00 SA",
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
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: size.width * 0.01,
                    bottom: size.height*0.01,
                    right: size.width*0.03,
                  ),
                  child: Text(
                    "30 phút trước",
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
                Container(
                  padding: EdgeInsets.only(
                    top: size.height*0.01,
                    right: size.width*0.03,
                  ),
                  child: Text(
                    "Đã xác nhận",
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: ColorConstant.green400,
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
        ],
      ),
    );
  }
}
