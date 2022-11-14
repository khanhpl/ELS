import 'package:els_cus_mobile/core/models/booking_data_model.dart';

import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bookingItemWidget(BuildContext context, BookingDataModel booking){
  var size = MediaQuery.of(context).size;
  String color = "";
  // print('Status id:' );
  String getStatus(){
    String status = "";
    if(booking.status == 'WAITING_FOR_SITTER'){
      status = "Đang đợi csv";
      color = "blue";
    }else if(booking.status == 'STARTING'){
      status = "Đang thực hiện";
    }else if(booking.status == 'DONE'){
      status = "Đã xong";
    }else if(booking.status == 'CANCEL'){
      status = "Đã hủy";
    }else if(booking.status == 'WAITING_FOR_DATE'){
      status = "Đang đợi đến ngày làm việc";
    }else if(booking.status == 'WAITING_FOR_CUS_PAYMENT'){
      status = "Đang đợi thanh toán";
    }else{
      status = "Đang tải";
    }
    return status;
  }
  return Container(
    padding: EdgeInsets.all(size.width*0.03),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffEEE2FF),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: size.height*0.01,
            bottom: size.height*0.01,
            left: size.width * 0.03,
          ),
          child: SizedBox(
            width: size.width*0.6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    booking.sitterName,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: 16,
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
                      "Nơi thực thiện: ${booking.place}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: 14,
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
                      "Tổng giá tiền: ${booking.totalPrice.ceil()} VNĐ",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: 14,
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
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: size.height*0.01,
            ),
            child: Text(
              getStatus(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: (color == "blue")? Colors.blueAccent : ColorConstant.black900,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1.00,
              ),
            ),
          ),
        ),
      ],
    ),
  );

}