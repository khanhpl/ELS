import 'package:els_cus_mobile/core/models/booking_data_model.dart';
import 'package:flutter/cupertino.dart';

import '../core/utils/color_constant.dart';

Widget HistoryItemWidget(BuildContext context, BookingDataModel booking){
  var size = MediaQuery.of(context).size;
  String getStatus(){
    String status = "";
    if(booking.id.toInt() == 6) status = "Đã hoàn thành";
    // if(booking.id.toInt() != 6) status = "Đã hủy";
    return status;
  }

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
                booking.name,
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
                  "Ngày bắt đầu: "+"${booking.startDateTime.toString()}",
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                ),
                child: Text(
                  "Ngày kết thúc: "+"${booking.endDateTime.toString()}",
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
                getStatus(),
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
            Container(
              padding: EdgeInsets.only(
                top: size.height*0.01,
                right: size.width*0.03,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
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