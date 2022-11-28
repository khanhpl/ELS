import 'package:els_cus_mobile/blocs/booking_bloc.dart';
import 'package:els_cus_mobile/blocs/sitter_blocs.dart';
import 'package:els_cus_mobile/core/models/WorkingScheduleModel.dart';
import 'package:els_cus_mobile/core/models/booking_data_model.dart';
import 'package:els_cus_mobile/core/models/booking_detail_model.dart';
import 'package:els_cus_mobile/core/models/booking_img_response_dto.dart';
import 'package:els_cus_mobile/core/models/single_sitter_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/payment_screen/payment_screen.dart';
import 'package:els_cus_mobile/presentation/rating_screen/rating_screen.dart';
import 'package:els_cus_mobile/presentation/splash_screen/splash_screen.dart';
import 'package:els_cus_mobile/widgets/elder_item_on_detail_widget.dart';
import 'package:els_cus_mobile/widgets/sitter_item_on_booing_detail_widget.dart';
import 'package:els_cus_mobile/widgets/SuccessWidget.dart';
import 'package:flutter/material.dart';
import '../core/utils/globals.dart' as globals;
import 'failWidget.dart';

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

  BookingBloc _bookingBloc = BookingBloc();

  String getStatus() {
    String status = "";
    if (booking.status == 'WAITING_FOR_SITTER') {
      status = "Đang đợi csv";
    } else if (booking.status == 'STARTING') {
      status = "Đang thực hiện";
    } else if (booking.status == 'DONE') {
      status = "Đã xong";
    } else if (booking.status == 'CANCEL') {
      status = "Đã hủy";
    } else if (booking.status == 'WAITING_FOR_DATE') {
      status = "Đang đợi đến ngày làm việc";
    } else if (booking.status == 'WAITING_FOR_CUSTOMER_PAYMENT') {
      status = "Đang đợi thanh toán";
    } else if (booking.status == 'WAITING_FOR_CUSTOMER_CHECK') {
      status = "Đang đợi xác nhận hoàn thành";
    } else if (booking.status == 'SITTER_NOT_FOUND') {
      status = "Không tìm thấy csv phù hợp";
    } else if (booking.status == 'WAITING_FOR_NEXT_DATE') {
      status = "Đợi đến ngày làm việc tiếp theo";
    } else {
      status = "Đang tải";
    }
    return status;
  }

  void showCancelAlertDialog(BuildContext context) {
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
        "Bạn xác nhận muốn hủy đặt lịch này",
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

  void showPaymentAlertDialog(BuildContext context) {
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
      onPressed: () {
        onPaymentClick();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Xác Nhận Thanh Toán",
      ),
      content: const Text(
        "Bạn xác nhận muốn thanh toán cho lịch chăm sóc này",
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

  void showConfirmCheckoutAlertDialog(BuildContext context) {
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
      onPressed: () {
        cusConfirmCheckout();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Xác Nhận Hoàn Thành Đặt Lịch",
      ),
      content: const Text(
        "Bạn xác nhận muốn hoàn thành lịch chăm sóc này",
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

  void showRatingAlertDialog(BuildContext context) {
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
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RatingScreen(bookingID: booking.id),
            ));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Đánh giá",
      ),
      content: const Text(
        "Bạn xác nhận muốn tạo đánh giá cho đặt lịch này.",
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

  Widget getButton(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (booking.status == 'WAITING_FOR_SITTER') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width,
              padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.03,
                top: size.height * 0.02,
                bottom: size.height * 0.05,
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showCancelAlertDialog(context);
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
        ],
      );
    } else if (booking.status == 'WAITING_FOR_DATE') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width,
              padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.03,
                top: size.height * 0.02,
                bottom: size.height * 0.05,
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showCancelAlertDialog(context);
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
        ],
      );
    } else if (booking.status == 'WAITING_FOR_NEXT_DATE') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width,
              padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.03,
                top: size.height * 0.02,
                bottom: size.height * 0.05,
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showCancelAlertDialog(context);
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
        ],
      );
    } else if (booking.status == 'WAITING_FOR_CUSTOMER_PAYMENT') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.4,
              padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.03,
                top: size.height * 0.02,
                bottom: size.height * 0.05,
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showCancelAlertDialog(context);
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
          SizedBox(
            width: size.width * 0.1,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.4,
              padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.03,
                top: size.height * 0.02,
                bottom: size.height * 0.05,
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showPaymentAlertDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstant.purple900,
                    textStyle: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                  ),
                  child: const Text("Thanh Toán"),
                ),
              ),
            ),
          ),
        ],
      );
    } else if (booking.status == 'DONE') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.94,
              margin: EdgeInsets.only(
                  top: size.height * 0.02, bottom: size.height * 0.02),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showRatingAlertDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstant.purple900,
                    textStyle: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                  ),
                  child: const Text("Đánh giá"),
                ),
              ),
            ),
          ),
        ],
      );
    } else if (booking.status == 'STARTING') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.94,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
        ],
      );
    } else if (booking.status == 'WAITING_FOR_CUSTOMER_CHECK') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.94,
              margin: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  top: size.height * 0.02,
                  bottom: size.height * 0.02),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showConfirmCheckoutAlertDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstant.purple900,
                    textStyle: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                  ),
                  child: const Text("Xác nhận hoàn thành"),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final Future<BookingDetailModel> bookingDetail =
        BookingBloc().getBookingDetailByBookingID(booking.id.toString());

    return FutureBuilder<BookingDetailModel>(
      future: bookingDetail,
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        if (!snapshot.hasData) {
          return const SplashScreen();
        } else {
          final Future<SingleSitterModel> sitter = SitterBlocs()
              .getSitterDetailByEmail(snapshot.data!.data.sitterDto.email);
          final Future<WorkingScheduleModel> doneSchedule =
              BookingBloc().getWorkingScheduke(booking.id, "DONE");
          final Future<WorkingScheduleModel> upcomingSchedule =
              BookingBloc().getWorkingScheduke(booking.id, "ACTIVATE");
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: size.height * 0.08,
                // bottomOpacity: 0.0,
                elevation: 0.0,
                automaticallyImplyLeading: false,
                backgroundColor: ColorConstant.purple900,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    ImageConstant.imgArrowleft,
                    height: size.height * 0.024,
                    width: size.width * 0.03,
                    color: ColorConstant.whiteA700,
                  ),
                ),
                title: Container(
                  color: ColorConstant.purple900,
                  margin: EdgeInsets.only(
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
                  child: Text(
                    "Chi tiết đặt lịch",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 1.00,
                    ),
                  ),
                ),
              ),
              body: Container(
                color: ColorConstant.gray300,
                width: size.width,
                height: size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.all(size.width * 0.03),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Mã đặt lịch:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                              ),
                              child: Text(
                                booking.name,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Thân nhân được chăm sóc:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                                right: size.width * 0.06,
                              ),
                              child: ElderItemOnDetailWidget(
                                  context, snapshot.data!.data.elder),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Chăm sóc viên:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                                right: size.width * 0.06,
                                bottom: size.height * 0.02,
                              ),
                              child: FutureBuilder<SingleSitterModel>(
                                future: sitter,
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) print(snapshot.error);
                                  if (!snapshot.hasData) {
                                    return const SplashScreen();
                                  } else {
                                    return SitterItemOnBookingDetailWidget(
                                        sitter: snapshot.data!.data);
                                  }
                                },
                              ),
                            ),
                            Container(
                              width: size.width,
                              height: 1,
                              color: ColorConstant.gray300,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Địa chỉ thực hiện:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                                bottom: size.height * 0.02,
                              ),
                              child: Text(
                                snapshot.data!.data.address,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: size.width,
                              height: 1,
                              color: ColorConstant.gray300,
                            ),
                            (booking.status == "WAITING_FOR_SITTER" ||
                                    booking.status == "WAITING_FOR_CUS_PAYMENT")
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                          left: size.width * 0.03,
                                        ),
                                        child: const Text(
                                          "Lịch trình thực hiện(dự kiến):",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      ListView.separated(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.01,
                                            bottom: size.height * 0.02,
                                          ),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                left: size.width * 0.06,
                                              ),
                                              child: Text(
                                                convertDate(
                                                    snapshot
                                                        .data!
                                                        .data
                                                        .workingTimeResponseDtoList[
                                                            index]
                                                        .startDateTime
                                                        .toString(),
                                                    snapshot
                                                        .data!
                                                        .data
                                                        .workingTimeResponseDtoList[
                                                            index]
                                                        .endDateTime
                                                        .toString()),
                                                style: const TextStyle(
                                                  height: 1.5,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              SizedBox(
                                                  height: size.height * 0.01),
                                          itemCount: snapshot
                                              .data!
                                              .data
                                              .workingTimeResponseDtoList
                                              .length),
                                      Container(
                                        width: size.width,
                                        height: 1,
                                        color: ColorConstant.gray300,
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
                            (booking.status == "WAITING_FOR_NEXT_DATE" ||
                                    booking.status == "DONE" ||
                                    booking.status == "WAITING_FOR_DATE")
                                ? FutureBuilder<WorkingScheduleModel>(
                                    future: doneSchedule,
                                    builder: (context, snapshot) {
                                      if (snapshot.hasError)
                                        print(snapshot.error);
                                      if (snapshot.hasData) {
                                        if (snapshot.data!.errorCode == "") {
                                          return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.02,
                                                  left: size.width * 0.03,
                                                ),
                                                child: const Text(
                                                  "Lịch trình đã thực hiện:",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              ListView.separated(
                                                  padding: EdgeInsets.only(
                                                    top: size.height * 0.01,
                                                    bottom: size.height * 0.02,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding: EdgeInsets.only(
                                                        left: size.width * 0.06,
                                                      ),
                                                      child: Text(
                                                        "Ngày: ${snapshot.data!.data[index].date.split("T")[0]}    Bắt đầu: ${snapshot.data!.data[index].date.split("T")[1].split(":")[0]}:${snapshot.data!.data[index].date.split("T")[1].split(":")[1]}",
                                                        style: const TextStyle(
                                                          height: 1.5,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder: (context,
                                                          index) =>
                                                      SizedBox(
                                                          height: size.height *
                                                              0.01),
                                                  itemCount: snapshot
                                                      .data!.data.length),
                                              Container(
                                                width: size.width,
                                                height: 1,
                                                color: ColorConstant.gray300,
                                              ),
                                            ],
                                          );
                                        } else {
                                          return const SizedBox();
                                        }
                                      } else {
                                        return const SizedBox();
                                      }
                                    },
                                  )
                                : const SizedBox(),
                            (booking.status == "WAITING_FOR_DATE" ||
                                    booking.status == "WAITING_FOR_NEXT_DATE")
                                ? FutureBuilder<WorkingScheduleModel>(
                                    future: upcomingSchedule,
                                    builder: (context, snapshot) {
                                      if (snapshot.hasError)
                                        print(snapshot.error);
                                      if (snapshot.hasData) {
                                        if (snapshot.data!.errorCode == "") {
                                          return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.02,
                                                  left: size.width * 0.03,
                                                ),
                                                child: const Text(
                                                  "Lịch trình sắp thực hiện:",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              ListView.separated(
                                                  padding: EdgeInsets.only(
                                                    top: size.height * 0.01,
                                                    bottom: size.height * 0.02,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding: EdgeInsets.only(
                                                        left: size.width * 0.06,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Ngày: ${snapshot.data!.data[index].date.split("T")[0]}    Bắt đầu: ${snapshot.data!.data[index].date.split("T")[1].split(":")[0]}:${snapshot.data!.data[index].date.split("T")[1].split(":")[1]}",
                                                            style:
                                                                const TextStyle(
                                                              height: 1.5,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              width:
                                                                  size.width *
                                                                      0.1),
                                                          GestureDetector(
                                                            onTap: () {
                                                              _onReduceDateClick(
                                                                  snapshot
                                                                      .data!
                                                                      .data[
                                                                          index]
                                                                      .date
                                                                      .split(
                                                                          "T")[0]);
                                                            },
                                                            child: Text(
                                                              "Hủy",
                                                              style: TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  height: 1.5,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: ColorConstant
                                                                      .purple900),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder: (context,
                                                          index) =>
                                                      SizedBox(
                                                          height: size.height *
                                                              0.01),
                                                  itemCount: snapshot
                                                      .data!.data.length),
                                              Container(
                                                width: size.width,
                                                height: 1,
                                                color: ColorConstant.gray300,
                                              ),
                                            ],
                                          );
                                        } else {
                                          return const SizedBox();
                                        }
                                      } else {
                                        return const SizedBox();
                                      }
                                    },
                                  )
                                : const SizedBox(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Dịch vụ được chọn:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                                bottom: size.height * 0.02,
                              ),
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot
                                            .data!
                                            .data
                                            .bookingDetailResponseDtoList[index]
                                            .serviceName,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.005,
                                          left: size.width * 0.03,
                                        ),
                                        child: Text(
                                          "Giá tiền: ${snapshot.data!.data.bookingDetailResponseDtoList[index].price.ceil().toString()} VNĐ",
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.005,
                                          left: size.width * 0.03,
                                        ),
                                        child: Text(
                                          "Thời gian thực hiện: ${snapshot.data!.data.bookingDetailResponseDtoList[index].duration.toString()} phút",
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(),
                                itemCount: snapshot.data!.data
                                    .bookingDetailResponseDtoList.length,
                              ),
                            ),
                            Container(
                              width: size.width,
                              height: 1,
                              color: ColorConstant.gray300,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Tổng giá tiền:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                                bottom: size.height * 0.02,
                              ),
                              child: Text(
                                "${snapshot.data!.data.totalPrice.ceil().toString()} VNĐ",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: size.width,
                              height: 1,
                              color: ColorConstant.gray300,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Phương thức thanh toán:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                                bottom: size.height * 0.02,
                              ),
                              child: Text(
                                snapshot.data!.data.paymentResponseDto
                                    .toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: size.width,
                              height: 1,
                              color: ColorConstant.gray300,
                            ),
                            (snapshot.data!.data.bookingImgResponseDtoList
                                        .toString() ==
                                    "")
                                ? const SizedBox()
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                          left: size.width * 0.03,
                                        ),
                                        child: const Text(
                                          "Hình ảnh xác nhận bắt đầu:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.15,
                                        child: ListView.separated(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.01,
                                                  left: size.width * 0.06,
                                                  bottom: size.height * 0.02,
                                                ),
                                                child: Container(
                                                  width: size.width * 0.24,
                                                  height: size.width * 0.24,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  padding: EdgeInsets.only(
                                                      bottom:
                                                          size.height * 0.01),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 1,
                                                    ),
                                                    image: DecorationImage(
                                                      image: NetworkImage(((snapshot
                                                                  .data!
                                                                  .data
                                                                  .bookingImgResponseDtoList)
                                                              as List<
                                                                  BookingImgResponseDtoList>)[index]
                                                          .checkInUrl),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder:
                                                (context, index) => SizedBox(
                                                    width: size.width * 0.03),
                                            itemCount: (snapshot.data!.data
                                                        .bookingImgResponseDtoList
                                                    as List<
                                                        BookingImgResponseDtoList>)
                                                .length),
                                      ),
                                      Container(
                                        width: size.width,
                                        height: 1,
                                        color: ColorConstant.gray300,
                                      ),
                                    ],
                                  ),
                            ((snapshot.data!.data.status == "DONE" &&
                                        snapshot.data!.data
                                                .bookingImgResponseDtoList
                                                .toString() !=
                                            "") ||
                                    (snapshot.data!.data.status ==
                                            "WAITING_FOR_CUSTOMER_CHECK" &&
                                        snapshot.data!.data
                                                .bookingImgResponseDtoList
                                                .toString() !=
                                            ""))
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                          left: size.width * 0.03,
                                        ),
                                        child: const Text(
                                          "Hình ảnh xác nhận hoàn thành:",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.15,
                                        child: ListView.separated(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.01,
                                                  left: size.width * 0.06,
                                                  bottom: size.height * 0.02,
                                                ),
                                                child: Container(
                                                  width: size.width * 0.24,
                                                  height: size.width * 0.24,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  padding: EdgeInsets.only(
                                                      bottom:
                                                          size.height * 0.01),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 1,
                                                    ),
                                                    image: DecorationImage(
                                                      image: NetworkImage(((snapshot
                                                                  .data!
                                                                  .data
                                                                  .bookingImgResponseDtoList)
                                                              as List<
                                                                  BookingImgResponseDtoList>)[index]
                                                          .checkOutUrl),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder:
                                                (context, index) => SizedBox(
                                                    width: size.width * 0.03),
                                            itemCount: (snapshot.data!.data
                                                        .bookingImgResponseDtoList
                                                    as List<
                                                        BookingImgResponseDtoList>)
                                                .length),
                                      ),
                                      Container(
                                        width: size.width,
                                        height: 1,
                                        color: ColorConstant.gray300,
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Trạng thái:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                left: size.width * 0.06,
                              ),
                              child: Text(
                                getStatus(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: Align(
                          alignment: Alignment.center,
                          child: getButton(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  String convertDate(String startDate, endDate) {
    String dateConverted = "";
    String dateStart = startDate.split("T")[0];
    String timeStart = startDate.split("T")[1];
    String dateEnd = endDate.split("T")[0];
    String timeEnd = endDate.split("T")[1];
    dateConverted =
        "Ngày: ${dateStart.split("-")[2]}-${dateStart.split("-")[1]}-${dateStart.split("-")[0]}\n   Bắt đầu: ${timeStart.split(":")[0]}h${timeStart.split(":")[1]}   Kết thúc: ${timeEnd.split(":")[0]}h${timeEnd.split(":")[1]}";
    return dateConverted;
  }

  onPaymentClick() async {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PaymentScreen(
              title: "Đặt cọc",
              amount: int.parse(booking.deposit.ceil().toString()),
              bookingName: booking.name,
              bookingId: booking.id),
        ));
  }

  cusConfirmCheckout() async {
    bool isConfirm = false;
    isConfirm = await _bookingBloc.cusConfirmCheckOut(booking.id);

    if (isConfirm) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                    alert: 'Xác nhận thành công',
                    detail: 'Xác nhận hoàn thành công việc hoàn tất\n'
                        'Cám ơn bạn đã tin tưởng sử dụng dịch vụ của Elderly Sitter',
                    buttonName: 'Trở về',
                    navigatorName: '/homeScreen',
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Xác nhận chưa thành công',
                  detail:
                      'Chưa xác nhận hoàn tất công việc, vui lòng xác nhận lại',
                  buttonName: 'quay lại',
                  navigatorName: '/homeScreen')));
    }
  }

  _onReduceDateClick(String dateReduce) async {
    bool isReduced = false;
    isReduced = await _bookingBloc.reduceDate(booking.id, dateReduce);
    if (isReduced) {
      print('Success');
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                    alert: 'Xóa lịch thành công',
                    detail: 'Đã xóa ngày được chọn\n'
                        'Xem lại chi tiết đặt lịch để kiếm tra',
                    buttonName: 'Trở về',
                    navigatorName: '/scheduleScreen',
                  )));
    } else {
      print('Fail');
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Xóa lịch thất bại',
                  detail: 'Vui lòng kiểm tra lại đặt lịch',
                  buttonName: 'quay lại',
                  navigatorName: '/scheduleScreen')));
    }
  }
}
