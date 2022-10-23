
import 'package:els_sitter/core/models/booking_data_model.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';

Widget bookingItemWidget(BuildContext context, BookingDataModel booking){
  var size = MediaQuery.of(context).size;
  return Row(
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
                booking.sitter.fullname,
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
                  "${booking.startDateTime.toString()}",
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
            Padding(
              padding: EdgeInsets.only(
                top: size.height*0.01,
              ),
              child: Text(
                "Dịch vụ",
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Padding(
            //   padding: EdgeInsets.only(
            //     top: size.width * 0.01,
            //     bottom: size.height*0.01,
            //     right: size.width*0.03,
            //   ),
            //   child: Text(
            //     "30 phút trước",
            //     overflow: TextOverflow.ellipsis,
            //     textAlign: TextAlign.left,
            //     style: TextStyle(
            //       color: ColorConstant.gray700,
            //       fontSize: 13,
            //       fontFamily: 'Roboto',
            //       fontWeight: FontWeight.w400,
            //       height: 1.00,
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(
                top: size.height*0.01,
                right: size.width*0.03,
              ),
              child: Text(
                "Đang chờ",
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
  );
}