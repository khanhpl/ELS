import 'dart:io';

import 'package:els_cus_mobile/blocs/booking_bloc.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/widgets/failWidget.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:momo_vn/momo_vn.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/globals.dart' as globals;
import '../../widgets/SuccessWidget.dart';

class PaymentScreen extends StatefulWidget {
  String title;
  int amount;
  String bookingName;
  int bookingId;

  PaymentScreen(
      {super.key,
      required this.title,
      required this.amount,
      required this.bookingName,
      required this.bookingId});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState(
      title: this.title,
      amount: this.amount,
      bookingName: this.bookingName,
      bookingId: this.bookingId);
}

class _PaymentScreenState extends State<PaymentScreen> {
  String title;
  int amount;
  String bookingName;
  int bookingId;

  _PaymentScreenState(
      {required this.title,
      required this.amount,
      required this.bookingName,
      required this.bookingId});

  late MomoVn _momoPay;
  late PaymentResponse _momoPaymentResult;

  // ignore: non_constant_identifier_names
  late String _paymentStatus;

  @override
  void initState() {
    super.initState();
    _momoPay = MomoVn();
    _momoPay.on(MomoVn.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _momoPay.on(MomoVn.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _paymentStatus = "";
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    if (!mounted) return;
    setState(() {});
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
        "Bạn xác nhận muốn thanh toán lịch chăm sóc này",
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
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
            title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.whiteA700,
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              height: 1.00,
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: size.width,
        padding: EdgeInsets.only(
          left: size.width * 0.08,
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
      body: Material(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.05),
              SizedBox(
                width: size.width,
                child: const Text(
                  "Để tiến hành đặt cọc\n",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onPaymentClick() async {
    MomoPaymentInfo options = MomoPaymentInfo(
        merchantName: "DNMTV",
        appScheme: "MOxx",
        merchantCode: 'MOMOM1IH20220922',
        partnerCode: 'MOMOM1IH20220922  ',
        amount: amount,
        orderId: bookingName,
        orderLabel: 'ELS Thanh Toán',
        merchantNameLabel: "HLGD",
        fee: 10,
        description: 'Đặt cục dịch vụ',
        username: globals.curUser!.data.email,
        partner: 'merchant',
        extra: "{\"key1\":\"value1\",\"key2\":\"value2\"}",
        isTestMode: true);
    try {
      _momoPay.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void dispose() {
    super.dispose();
    _momoPay.clear();
  }

  void _setState() {
    _paymentStatus = 'Đã chuyển thanh toán';
    if (_momoPaymentResult.isSuccess == true) {
      _paymentStatus += "\nTình trạng: Thành công.";
      _paymentStatus +=
          "\nSố điện thoại: " + _momoPaymentResult.phoneNumber.toString();
      _paymentStatus += "\nExtra: " + _momoPaymentResult.extra!;
      _paymentStatus += "\nToken: " + _momoPaymentResult.token.toString();
    } else {
      _paymentStatus += "\nTình trạng: Thất bại.";
      _paymentStatus += "\nExtra: " + _momoPaymentResult.extra.toString();
      _paymentStatus += "\nMã lỗi: " + _momoPaymentResult.status.toString();
    }
  }

  Future<void> _handlePaymentSuccess(PaymentResponse response) async {
    setState(() {
      _momoPaymentResult = response;
      _setState();
    });
    Fluttertoast.showToast(
        msg: "THÀNH CÔNG: " + response.phoneNumber.toString(),
        toastLength: Toast.LENGTH_SHORT);
    bool isPayment = false;
    isPayment = await BookingBloc()
        .createPayment("Momo", globals.curUser!.data.email, amount, bookingId);
    if (isPayment) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                  alert: 'Thanh toán thành công',
                  detail:
                      'Thanh toán thành công,\nVui lòng đợi đến ngày để thực hiện đặt lịch',
                  buttonName: 'tiếp tục',
                  navigatorName: '/scheduleScreen')));
    } else {}
  }

  void _handlePaymentError(PaymentResponse response) {
    setState(() {
      _momoPaymentResult = response;
      _setState();
    });
    Fluttertoast.showToast(
        msg: "THẤT BẠI: " + response.message.toString(),
        toastLength: Toast.LENGTH_SHORT);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FailScreen(
                alert: 'Thanh toán thất bại',
                detail: 'Vui lòng thực hiện lại thanh toán',
                buttonName: 'quay lại',
                navigatorName: '/homeScreen')));
  }
}
