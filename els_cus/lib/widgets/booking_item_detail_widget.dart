
import 'package:els_cus_mobile/blocs/booking_bloc.dart';
import 'package:els_cus_mobile/blocs/elder_blocs.dart';
import 'package:els_cus_mobile/core/models/booking_data_model.dart';
import 'package:els_cus_mobile/core/models/booking_detail_model.dart';
import 'package:els_cus_mobile/core/models/elder_data_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class BookingItemDetailWidget extends StatefulWidget {
  BookingDataModel booking;

  BookingItemDetailWidget({super.key, required this.booking});

  @override
  State<BookingItemDetailWidget> createState() =>
      _BookingItemDetailWidgetState(booking: booking);
}

class _BookingItemDetailWidgetState extends State<BookingItemDetailWidget> {
  BookingDataModel booking;

  _BookingItemDetailWidgetState({required this.booking});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final Future<List<ElderDataModel>> elderList = ElderBlocs().getAllElder();
    final Future<BookingDetailModel> bookingDetail = BookingBloc().getBookingDetailByBookingID(booking.id.toString());
    void showAlertDialog(BuildContext context) {
      // set up the buttons
      Widget cancelButton = TextButton(
        child: Text(
          "Hủy",
          style: TextStyle(
            color: ColorConstant.purple900,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
      Widget continueButton = TextButton(
        child: Text(
          "Xác nhận",
          style: TextStyle(
            color: ColorConstant.purple900,
          ),
        ),
        onPressed: () {},
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: const Text(
          "Xác Nhận Hủy Đặt Lịch",
        ),
        content: const Text(
          "Bạn xác nhận muốn hủy đặt lịch chăm sóc này",
        ),
        actions: [
          cancelButton,
          continueButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.03,
                              top: size.height * 0.02,
                              right: size.width * 0.03,
                            ),
                            child: Image.asset(
                              ImageConstant.imgArrowleft,
                              height: size.width * 0.03,
                              width: size.width * 0.03,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Chi tiết đặt lịch",
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
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Text(
                      "Thời gian và Ngày tháng",
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              booking.startDateTime.toString(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                ),
                                child: Text(
                                  booking.startDateTime.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 13,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                ImageConstant.imgArrowrightGray400,
                                height: size.width * 0.03,
                                width: size.width * 0.03,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Text(
                      "Nhân viên",
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              booking.sitter.fullname,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: Padding(
                            //     padding: EdgeInsets.only(
                            //       top: size.height * 0.01,
                            //     ),
                            //     child: Text(
                            //       "Trò chuyện cùng",
                            //       overflow: TextOverflow.ellipsis,
                            //       textAlign: TextAlign.left,
                            //       style: TextStyle(
                            //         color: ColorConstant.black900,
                            //         fontSize: 13,
                            //         fontFamily: 'Roboto',
                            //         fontWeight: FontWeight.w500,
                            //         height: 1.00,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                ImageConstant.imgArrowrightGray400,
                                height: size.width * 0.03,
                                width: size.width * 0.03,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.height * 0.015,
                    right: size.width * 0.03,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.015,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FutureBuilder<BookingDetailModel>(
                            builder: (context, snapshot) {
                              if (snapshot.hasError) print(snapshot.error);
                              if (snapshot.hasData) {
                                return ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  // itemCount: snapshot.data!.length,
                                  itemCount: snapshot.data!.data.length,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: size.height*0.01);
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Text(
                                        snapshot.data!.data[index].service.name);
                                  },
                                );
                              } else {
                                return const CircularProgressIndicator();
                              }
                            },
                            future: bookingDetail,
                          ),
                        ),
                        //show elder
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Text(
                      "Thân nhân được chăm sóc",
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.015,
                      right: size.width * 0.03,
                    ),
                    child: SizedBox(
                      height: size.height * 0.08,
                      child: FutureBuilder<List<ElderDataModel>>(
                        builder: (context, snapshot) {
                          if (snapshot.hasError) print(snapshot.error);
                          if (snapshot.hasData) {
                            
                              return Text("người thân nè");
                            
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                        future: elderList,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Text(
                      "Địa chỉ thực hiện",
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gò vấp, tp Hồ Chí Minh",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                ),
                                child: Text(
                                  "0.31 Km",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 13,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                ImageConstant.imgArrowrightGray400,
                                height: size.width * 0.03,
                                width: size.width * 0.03,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Phương thức thanh toán",
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
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.015,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageConstant.imgIconAdd,
                                    height: size.width * 0.03,
                                    width: size.width * 0.03,
                                  ),
                                  SizedBox(width: size.width * 0.015),
                                  Text(
                                    "Thêm phương thức thanh toán",
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: size.height * 0.07,
                                    width: size.width * 0.15,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: ColorConstant.black900,
                                        width: 1,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                              ImageConstant.imgMomo,
                                              fit: BoxFit.fill),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.03,
                                    ),
                                    child: Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.15,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: ColorConstant.black900,
                                          width: 1,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                                ImageConstant.imgZalopay,
                                                fit: BoxFit.fill),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Text(
                      "Giá tiền",
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Tổng cộng",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 1.00,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            booking.totalPrice.ceil().toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: ColorConstant.black900,
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: size.width * 0.03,
                        right: size.width * 0.03,
                        top: size.height * 0.02,
                        bottom: size.height * 0.02),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstant.purple900,
                            textStyle: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                          ),
                          child: const Text("Hủy"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




}