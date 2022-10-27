
import 'package:els_sitter/core/models/booking_data_model.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';

Widget bookingItemWidget(BuildContext context, BookingDataModel booking){
  var size = MediaQuery.of(context).size;
  // print('Status id:' );
  String getStatus(){
    String status = "";

    if(booking.status.statusName == 'WAITING_FOR_SITTER'){
      status = "Đang tìm kiếm";
    }else if(booking.status.statusName == 'STARTING'){
      status = "Đang thực hiện";
    }else if(booking.status.statusName == 'DONE'){
      status = "Đã xong";
    }else if(booking.status.statusName == 'CANCEL'){
      status = "Đã hủy";
    }else{
      status = "Chưa biết";
    }
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
                  booking.cus!.fullname,
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
              color: ColorConstant.black900,
              fontSize: 13,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 1.00,
            ),
          ),
        ),
      ),
    ],
  );

}