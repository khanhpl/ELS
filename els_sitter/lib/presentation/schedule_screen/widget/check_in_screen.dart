import 'dart:io';

import 'package:els_sitter/blocs/booking_bloc.dart';
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widgets/failWidget.dart';
import '../../../widgets/successWidget.dart';

class CheckInScreen extends StatefulWidget {
  int bookingID;

  CheckInScreen({super.key, required this.bookingID});

  @override
  State<CheckInScreen> createState() =>
      _CheckInScreenState(bookingID: this.bookingID);
}

class _CheckInScreenState extends State<CheckInScreen> {
  int bookingID;

  _CheckInScreenState({required this.bookingID});

  BookingBloc _bookingBloc = BookingBloc();
  String checkinImgImage = "";
  late File imageFileCheckIn;
  XFile? pickedFileCheckIn;
  UploadTask? uploadTaskCheckIn;
  bool isCheckInCheck = false;

  Future _getCheckInImageFromGallery() async {
    pickedFileCheckIn = (await ImagePicker().pickImage(
      source: ImageSource.camera,
    ));
    if (pickedFileCheckIn != null) {
      setState(() {
        imageFileCheckIn = File(pickedFileCheckIn!.path);
        isCheckInCheck = true;
      });
    }
    //upload
    final path = 'els_images/${pickedFileCheckIn!.name}';
    final file = File(pickedFileCheckIn!.path);
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTaskCheckIn = ref.putFile(file);

    final snapshot = await uploadTaskCheckIn!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    checkinImgImage = urlDownload;
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
        onCheckInClick();
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
            "Xác Nhận Bắt Đầu",
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
              showCheckInAlertDialog(context);
            },
            style: ElevatedButton.styleFrom(
              primary: ColorConstant.purple900,
              textStyle: TextStyle(
                fontSize: size.width * 0.045,
              ),
            ),
            child: const Text("Xác nhận"),
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
                  "Để bắt đầu lịch trình này\n Hãy chụp ảnh tại nơi làm việc để xác nhận",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    _getCheckInImageFromGallery();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorConstant.purple900),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: const Text(
                    "Tải lên hình ảnh",
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              isCheckInCheck == false
                  ? const SizedBox()
                  : Container(
                      width: size.width * 0.8,
                      height: size.height * 0.3,
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: size.height * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        image: DecorationImage(
                          image: FileImage(imageFileCheckIn),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  onCheckInClick() async {
    bool isCheckIn = false;
    isCheckIn =
        await _bookingBloc.sitterCheckInAction(bookingID, checkinImgImage);

    if (isCheckIn) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                    alert: 'Check in thành công',
                    detail: 'Check in công việc thành công',
                    buttonName: 'Tiếp tục',
                    navigatorName: '/scheduleScreen',
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Check in không thành công',
                  detail: 'Vui lòng check in lại lần nữa',
                  buttonName: 'Quay lại',
                  navigatorName: '/scheduleScreen')));
    }
  }
}
