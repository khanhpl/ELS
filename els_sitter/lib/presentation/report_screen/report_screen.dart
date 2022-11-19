
import 'package:els_sitter/blocs/booking_bloc.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  int bookingID;
  ReportScreen({super.key, required this.bookingID});

  @override
  State<ReportScreen> createState() => _ReportScreenState(bookingID: bookingID);
}

class _ReportScreenState extends State<ReportScreen> {
  int bookingID;
  _ReportScreenState({required this.bookingID});

  final TextEditingController descriptionController = TextEditingController();
  BookingBloc _bookingBloc = BookingBloc();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.purple900,
        toolbarHeight: size.height * 0.08,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Phản hồi về khách hàng',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.03,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding:
        EdgeInsets.fromLTRB(size.width * 0.03, 0, size.width * 0.03, 0),
        color: ColorConstant.whiteA700,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              Container(
                padding: EdgeInsets.only(left: size.width * 0.03),
                alignment: Alignment.center,
                width: size.width,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: ColorConstant.purple900),
                ),
                child: TextField(
                  cursorColor: ColorConstant.purple900,
                  maxLines: 3,
                  controller: descriptionController,
                  decoration: InputDecoration.collapsed(
                    hintText: "Nhận xét của bạn",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (states) => ColorConstant.purple900),
                ),
                onPressed: () {
                  _showConfirmDialog();
                },
                child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: Text('Xác nhận'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
        Navigator.pushNamed(context, '/homeScreen');
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
  _showConfirmDialog() {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Xác nhận đánh giá'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Xác nhận đánh giá'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Xác nhận',
                style: TextStyle(color: ColorConstant.purple900),
              ),
              onPressed: () {
              },
            ),
            TextButton(
              child: Text(
                'Hủy',
                style: TextStyle(color: ColorConstant.purple900),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
