import 'dart:io';

import 'package:els_sitter/blocs/booking_bloc.dart';

import 'package:els_sitter/core/models/booking_data_model.dart';
import 'package:els_sitter/core/models/booking_detail_model.dart';
import 'package:els_sitter/core/models/booking_img_response_dto.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:els_sitter/presentation/report_screen/report_screen.dart';
import 'package:els_sitter/presentation/schedule_screen/widget/check_in_screen.dart';
import 'package:els_sitter/presentation/schedule_screen/widget/check_out_screen.dart';
import 'package:els_sitter/presentation/splash_screen/splash_screen.dart';
import 'package:els_sitter/widgets/customer_item_on_detail_widget.dart';
import 'package:els_sitter/widgets/elder_item_on_detail_widget.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

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

  final BookingBloc _bookingBloc = BookingBloc();

  String getStatus() {
    String status = "";
    if (booking.status == 'WAITING_FOR_SITTER') {
      status = "Đang đợi chăm xóc viên xác nhận";
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
    }else if(booking.status == 'WAITING_FOR_CUSTOMER_CHECK'){
      status = "Đang đợi khách hàng xác nhận hoàn thành";
    } else {
      status = "Chưa biết";
    }
    return status;
  }

  void showSuccessAlertDialog(BuildContext context) {
    // set up the buttons

    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/scheduleScreen');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text(
        "Thành công",
      ),
      actions: [
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

  void showFailAlertDialog(BuildContext context) {
    // set up the buttons

    Widget continueButton = TextButton(
      child: Text(
        "Xác nhận",
        style: TextStyle(
          color: ColorConstant.purple900,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text(
        "Thất bại",
      ),
      actions: [
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

  void showAcceptAlertDialog(BuildContext context) {
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
        onAcceptClick();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Xác Nhận Đặt Lịch",
      ),
      content: const Text(
        "Bạn xác nhận muốn nhận đặt lịch này",
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
      onPressed: () {
        onCancelClick();
      },
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

  void showCheckoutAlertDialog(BuildContext context) {
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutScreen(bookingID: booking.id),));
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

  void showCheckInAlertDialog(BuildContext context) {
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
              builder: (context) => CheckInScreen(bookingID: booking.id),
            ));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Xác Nhận Bắt Đầu",
      ),
      content: const Text(
        "Bạn xác nhận muốn bắt đầu thực hiện lịch chăm sóc này",
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

  void showReportAlertDialog(BuildContext context) {
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => ReportScreen(bookingID: booking.id),));
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

  Widget getButton(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (booking.status == 'WAITING_FOR_SITTER') {
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
                    showAcceptAlertDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstant.purple900,
                    textStyle: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                  ),
                  child: const Text("Chấp nhận"),
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
                    showCheckInAlertDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstant.purple900,
                    textStyle: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                  ),
                  child: const Text("Bắt đầu"),
                ),
              ),
            ),
          ),
        ],
      );
    } else if (booking.status == 'WAITING_FOR_CUS_PAYMENT') {
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
    } else if (booking.status == 'DONE') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.4,
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
                    showReportAlertDialog(context);
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
                    showCheckoutAlertDialog(context);
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
  String processImage = "";
  late File imageFileProcess;
  XFile? pickedFileProcess;
  UploadTask? uploadTaskProcess;
  bool isProcessCheck = false;
  Future _getIDFrontImageFromGallery() async {
    pickedFileProcess = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    ));
    if (pickedFileProcess != null) {
      setState(() {
        imageFileProcess = File(pickedFileProcess!.path);
        isProcessCheck = true;
      });
    }
    //upload
    final path = 'els_images/${pickedFileProcess!.name}';
    final file = File(pickedFileProcess!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskProcess = ref.putFile(file);

    final snapshot = await uploadTaskProcess!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    processImage = urlDownload;
    print('Download link processImg: ${urlDownload}');
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
                                "Người được chăm sóc:",
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
                                "Người đặt lịch:",
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
                              child: CusItemOnDetailWidget(
                                  cus: snapshot.data!.data.cusDto),
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
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                left: size.width * 0.03,
                              ),
                              child: const Text(
                                "Thời gian bắt đầu:",
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
                                convertDate(snapshot.data!.data
                                    .workingTimeResponseDtoList[0].startDateTime
                                    .toString()),
                                style: const TextStyle(
                                  height: 1.5,
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
                                "Thời gian kết thúc:",
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
                                convertDate(snapshot.data!.data
                                    .workingTimeResponseDtoList[0].endDateTime
                                    .toString()),
                                style: const TextStyle(
                                  height: 1.5,
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
                                    .toString()
                                    .isEmpty)
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
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.01,
                                          left: size.width * 0.06,
                                          bottom: size.height * 0.02,
                                        ),
                                        child: Container(
                                          width: size.width * 0.24,
                                          height: size.width * 0.24,
                                          alignment: Alignment.bottomCenter,
                                          padding: EdgeInsets.only(
                                              bottom: size.height * 0.01),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                                                          BookingImgResponseDtoList>)[0]
                                                  .url),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: size.width,
                                        height: 1,
                                        color: ColorConstant.gray300,
                                      ),
                                    ],
                                  ),
                            (snapshot.data!.data.status != "STARTING")
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
                                          "Hình ảnh quá trình làm việc:",
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
                                          child: GestureDetector(
                                            onTap: (){

                                            },
                                            child: DottedBorder(
                                              radius: const Radius.circular(8),
                                              padding: EdgeInsets.all(
                                                  size.width * 0.02),
                                              color: ColorConstant.purple900,
                                              strokeWidth: 2,
                                              borderType: BorderType.RRect,
                                              child: Icon(
                                                Icons.add,
                                                size: size.width * 0.2,
                                                color: ColorConstant.purple900,
                                              ),
                                            ),
                                          )),
                                      Container(
                                        width: size.width,
                                        height: 1,
                                        color: ColorConstant.gray300,
                                      ),
                                    ],
                                  ),
                            (snapshot.data!.data.status != "DONE")
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
                                    "Hình ảnh xác nhận hoàn thành:",
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
                                  child: Container(
                                    width: size.width * 0.24,
                                    height: size.width * 0.24,
                                    alignment: Alignment.bottomCenter,
                                    padding: EdgeInsets.only(
                                        bottom: size.height * 0.01),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(8),
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
                                            BookingImgResponseDtoList>)[1]
                                            .url),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width,
                                  height: 1,
                                  color: ColorConstant.gray300,
                                ),
                              ],
                            ),
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

  String convertDate(String inputDate) {
    String dateConverted = "";
    String date = inputDate.split("T")[0];
    String time = inputDate.split("T")[1];
    dateConverted =
        "Ngày: ${date.split("-")[2]}-${date.split("-")[1]}-${date.split("-")[0]}\nLúc: ${time.split(":")[0]}:${time.split(":")[1]}";
    return dateConverted;
  }

  onAcceptClick() async {
    bool isAccept = false;
    isAccept = await _bookingBloc.sitterAcceptAction(booking.id);

    if (isAccept) {
      showSuccessAlertDialog(context);
    } else {
      showFailAlertDialog(context);
    }
  }

  onCancelClick() async {
    bool isCancel = false;
    isCancel = await _bookingBloc.sitterCancelAction(booking.id);

    if (isCancel) {
      showSuccessAlertDialog(context);
    } else {
      showFailAlertDialog(context);
    }
  }
}
