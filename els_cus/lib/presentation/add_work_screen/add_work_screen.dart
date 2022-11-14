import 'package:els_cus_mobile/blocs/booking_bloc.dart';
import 'package:els_cus_mobile/blocs/elder_blocs.dart';
import 'package:els_cus_mobile/blocs/service_blocs.dart';
import 'package:els_cus_mobile/core/models/add_booking_service_request_dto.dart';
import 'package:els_cus_mobile/core/models/add_working_times_dto_list.dart';
import 'package:els_cus_mobile/core/models/booking_form_model.dart';
import 'package:els_cus_mobile/core/models/elder_model.dart';
import 'package:els_cus_mobile/core/models/service_booking_request_model.dart';
import 'package:els_cus_mobile/core/models/service_data_model.dart';
import 'package:els_cus_mobile/core/models/service_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/widgets/elder_item_on_booking_widget.dart';
import 'package:els_cus_mobile/widgets/service_item_booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../core/utils/globals.dart' as Globals;
import '../../widgets/update_service_button.dart';

class AddWorkScreen extends StatefulWidget {
  const AddWorkScreen

  ({super.key});

  @override
  State<AddWorkScreen> createState() => _AddWorkScreenState();
}

class _AddWorkScreenState extends State<AddWorkScreen> {
  // RangeValues _sliderRangeValues = RangeValues(15000, 100000);
  final Future<ElderModel> elderList = ElderBlocs().getAllElder();
  String chooseElderID = "";
  bool _isGenderMale = true;
  bool _isGenderFemale = false;
  bool _isOneDay = true;
  bool _isMiltiDates = false;
  String workDate = "Ngày làm việc";
  String workTime = "Chọn thời gian làm việc";
  final Future<ServiceModel> serviceList = ServiceBlocs().getAllService();
  List<ServiceDataModel> listSelectedService = [];
  bool isChooseService = false;
  String expYear = "-1";
  String selectedTime = "-1";
  bool isHospital = false;
  bool isHouse = true;
  BookingBloc bloc = BookingBloc();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final Map<dynamic, dynamic> listServiceObj = {};
  DateTime startDateTime = DateTime.now();

  @override
  double calTotal() {
    double totalPrice = 0;
    if (listServiceObj.isNotEmpty) {
      listServiceObj.forEach((key, value) {
        for (ServiceDataModel service in listSelectedService) {
          if (service.id == key) {
            totalPrice =
                totalPrice + service.price * (value / service.duration);
          }
        }
      });
    }
    return totalPrice;
  }

  void _changeWorkDate(String date) async {
    setState(() {
      workDate = date;
    });
  }
  void _changeWorkTime(String time) async {
    setState(() {
      workTime = time;
    });
  }

  bool checkChooseService(ServiceDataModel selectedService) {
    if (listSelectedService.isNotEmpty) {
      for (ServiceDataModel service in listSelectedService) {
        if (service.id == selectedService.id) {
          return true;
        }
      }
    }
    return false;
  }

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
      onPressed: () {
        _onBookingClick();
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Xác Nhận Đặt Lịch",
      ),
      content: const Text(
        "Bạn xác nhận muốn đặt lịch chăm sóc này",
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

  _chooseService(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    AlertDialog alert = AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: ColorConstant.gray300,
      content: Container(
        padding: EdgeInsets.all(size.width * 0.03),
        width: size.width,
        decoration: BoxDecoration(
          color: ColorConstant.gray300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: FutureBuilder<ServiceModel>(
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            if (snapshot.hasData) {
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.data.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: size.height * 0.01);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ServiceItemBookingWidget(
                              context, snapshot.data!.data[index]),
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    bool chkOccur = false;
                                    if (listSelectedService.isNotEmpty) {
                                      for (ServiceDataModel service
                                      in listSelectedService) {
                                        if (service.id ==
                                            snapshot.data!.data[index].id) {
                                          chkOccur = true;
                                        }
                                      }
                                      if (chkOccur) {
                                        listSelectedService
                                            .remove(snapshot.data!.data[index]);
                                        listServiceObj.removeWhere(
                                                (key, value) =>
                                            key ==
                                                snapshot.data!.data[index].id);
                                      } else {
                                        listSelectedService
                                            .add(snapshot.data!.data[index]);
                                        listServiceObj[
                                        snapshot.data!.data[index].id] =
                                            snapshot.data!.data[index].duration;
                                      }
                                    } else {
                                      listSelectedService
                                          .add(snapshot.data!.data[index]);
                                      listServiceObj[
                                      snapshot.data!.data[index].id] =
                                          snapshot.data!.data[index].duration;
                                    }
                                    Navigator.pop(context);
                                  });
                                },
                                child: updateServiceButton(
                                    context,
                                    checkChooseService(
                                        snapshot.data!.data[index]))),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
          future: serviceList,
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

    // set up the AlertDialog
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
        "Đặt Lịch Thành công",
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
        "Đặt Lịch Thất bại",
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

  Widget getPickDateWidget(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    if (_isOneDay) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
            ),
            child: GestureDetector(
              onTap: () {
                DatePicker.showDatePicker(context, //showDateTime to pick time
                    showTitleActions: true,
                    minTime: DateTime.now(),
                    maxTime: DateTime(2023, 12, 31),
                    onChanged: (date) {},
                    onConfirm: (date) {
                      String dateInput =
                          '${date.year}-${(date.month >= 10)
                          ? date.month
                          : '0' + date.month.toString()}-${(date.day >= 10)
                          ? date.day
                          : '0' + date.day.toString()}';
                      _changeWorkDate(dateInput);
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.vi);
              },
              child: Container(
                width: double.infinity,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black45, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.048,
                        right: size.width * 0.048,
                      ),
                      child: Image.asset(
                        ImageConstant.imgCalendar,
                        color: ColorConstant.purple900,
                      ),
                    ),
                    Text(
                      workDate,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.width * 0.03,
              right: size.width * 0.03,
            ),
            child: GestureDetector(
              onTap: () {
                DatePicker.showTimePicker(context, //showDateTime to pick time
                    showTitleActions: true,
                    onChanged: (time) {},
                    onConfirm: (time) {
                      String timeInput =
                          '${time.hour}:${time.minute}';
                      _changeWorkTime(timeInput);
                      startDateTime = time;
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.vi);
              },
              child: Container(
                width: double.infinity,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black45, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.048,
                        right: size.width * 0.048,
                      ),
                      child: Image.asset(
                        ImageConstant.imgClock,
                        color: ColorConstant.purple900,
                      ),
                    ),
                    Text(
                      (workTime != "Chọn thời gian làm việc") ? '${workTime.split(":")[0]} Giờ ${workTime.split(":")[1]} phút' : workTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
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
    var size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.05,
                        ),
                        child: Text(
                          "Tạo tin công việc",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 34,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.03,
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nơi thực hiện: ',
                              style: TextStyle(
                                color: ColorConstant.purple900,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: isHouse,
                                  onChanged: (value) {
                                    setState(() {
                                      isHospital = false;
                                      isHouse = true;
                                    });
                                  },
                                  checkColor: ColorConstant.purple900,
                                  activeColor: Colors.white,
                                ),
                                const Text(
                                  'Tư gia',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: size.width * 0.05),
                                Checkbox(
                                  value: isHospital,
                                  onChanged: (value) {
                                    setState(() {
                                      isHospital = true;
                                      isHouse = false;
                                    });
                                  },
                                  checkColor: ColorConstant.purple900,
                                  activeColor: Colors.white,
                                ),
                                const Text(
                                  'Bệnh viện',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: StreamBuilder(
                              stream: bloc.addressStream,
                              builder: (context, snapshot) {
                                return TextField(
                                  controller: _addressController,
                                  cursorColor: ColorConstant.purple900,
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: "Địa chỉ",
                                    prefixIcon: SizedBox(
                                      width: size.width * 0.05,
                                      child: Image.asset(
                                        ImageConstant.imgLocation16X13,
                                        color: ColorConstant.purple900,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffCED0D2), width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: ColorConstant.purple900),
                                    ),
                                  ),
                                );
                              })),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.03,
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Số ngày làm việc:',
                              style: TextStyle(
                                color: ColorConstant.purple900,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isOneDay,
                                  onChanged: (value) {
                                    setState(() {
                                      _isOneDay = true;
                                      _isMiltiDates = false;
                                    });
                                  },
                                  checkColor: ColorConstant.purple900,
                                  activeColor: Colors.white,
                                ),
                                Text(
                                  'Một ngày',
                                  style: TextStyle(
                                    fontSize: size.height * 0.02,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: size.width * 0.1),
                                Checkbox(
                                  value: _isMiltiDates,
                                  onChanged: (value) {
                                    setState(() {
                                      _isOneDay = false;
                                      _isMiltiDates = true;
                                    });
                                  },
                                  checkColor: ColorConstant.purple900,
                                  activeColor: Colors.white,
                                ),
                                Text(
                                  'Nhiều ngày',
                                  style: TextStyle(
                                    fontSize: size.height * 0.02,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      getPickDateWidget(context),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.03,
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Giới tính:',
                              style: TextStyle(
                                color: ColorConstant.purple900,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: _isGenderMale,
                                  onChanged: (value) {
                                    setState(() {
                                      _isGenderMale = true;
                                      _isGenderFemale = false;
                                    });
                                  },
                                  checkColor: ColorConstant.purple900,
                                  activeColor: Colors.white,
                                ),
                                const Text(
                                  'Nam',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: size.width * 0.1),
                                Checkbox(
                                  value: _isGenderFemale,
                                  onChanged: (value) {
                                    setState(() {
                                      _isGenderMale = false;
                                      _isGenderFemale = true;
                                    });
                                  },
                                  checkColor: ColorConstant.purple900,
                                  activeColor: Colors.white,
                                ),
                                const Text(
                                  'Nữ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
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
                            "Chọn dịch vụ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.purple900,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
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
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _chooseService(context);
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageConstant.imgIconAdd,
                                    height: size.width * 0.03,
                                    width: size.width * 0.03,
                                    color: ColorConstant.purple900,
                                  ),
                                  SizedBox(width: size.width * 0.015),
                                  Text(
                                    "Thêm dịch vụ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.purple900,
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
                                top: size.height * 0.015,
                              ),
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listSelectedService.length,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: size.height * 0.01);
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.all(size.width * 0.03),
                                    margin: EdgeInsets.all(size.width * 0.03),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 1,
                                          color: ColorConstant.purple900,
                                        )),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${listSelectedService[index].name}:',
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Text(
                                            '(giá đề xuất)${listSelectedService[index]
                                                .price.ceil()
                                                .toString()}VNĐ/${listSelectedService[index]
                                                .duration} phút',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: size.width * 0.01,
                                                left: size.width * 0.03),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Thời gian thực hiện: ${listServiceObj[listSelectedService[index]
                                                      .id]} phút',
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                      FontWeight.w400),
                                                ),
                                                SizedBox(
                                                    width: size.width * 0.03),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      listServiceObj[
                                                      listSelectedService[
                                                      index]
                                                          .id] =
                                                      (listServiceObj[
                                                      listSelectedService[
                                                      index]
                                                          .id] +
                                                          listSelectedService[
                                                          index]
                                                              .duration);
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.add_circle_outline,
                                                    size: size.width * 0.04,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: size.width * 0.03),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (listServiceObj[
                                                      listSelectedService[
                                                      index]
                                                          .id] >
                                                          listSelectedService[
                                                          index]
                                                              .duration) {
                                                        listServiceObj[listSelectedService[
                                                        index]
                                                            .id] =
                                                            listServiceObj[
                                                            listSelectedService[
                                                            index]
                                                                .id] -
                                                                listSelectedService[
                                                                index]
                                                                    .duration;
                                                      }
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.remove_circle_outline,
                                                    size: size.width * 0.04,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            //show elder
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.03,
                            top: size.height * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Kinh nghiệm làm việc (năm)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.purple900,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      color: ColorConstant.whiteA700,
                                      width: size.width * 0.42,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            expYear = "0";
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: (expYear != "0")
                                              ? Colors.white
                                              : ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                            color: (expYear != "0")
                                                ? Colors.black
                                                : ColorConstant.whiteA700,
                                          ),
                                        ),
                                        child: Text(
                                          "Không yêu cầu kinh nghiệm",
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: (expYear != "0")
                                                ? Colors.black
                                                : ColorConstant.whiteA700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: size.width * 0.42,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                expYear = "1";
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: (expYear != "1")
                                                  ? Colors.white
                                                  : ColorConstant.purple900,
                                              textStyle: TextStyle(
                                                fontSize: size.width * 0.045,
                                              ),
                                            ),
                                            child: Text(
                                              "<1",
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: (expYear != "1")
                                                    ? Colors.black
                                                    : ColorConstant.whiteA700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.42,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            expYear = "2";
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: (expYear != "2")
                                              ? Colors.white
                                              : ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                          ),
                                        ),
                                        child: Text(
                                          "1-3",
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: (expYear != "2")
                                                ? Colors.black
                                                : ColorConstant.whiteA700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: size.width * 0.42,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                expYear = "3";
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: (expYear != "3")
                                                  ? Colors.white
                                                  : ColorConstant.purple900,
                                              textStyle: TextStyle(
                                                fontSize: size.width * 0.045,
                                              ),
                                            ),
                                            child: Text(
                                              "3-5",
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: (expYear != "3")
                                                    ? Colors.black
                                                    : ColorConstant.whiteA700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.42,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            expYear = "4";
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: (expYear != "4")
                                              ? Colors.white
                                              : ColorConstant.purple900,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                          ),
                                        ),
                                        child: Text(
                                          "5-7",
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: (expYear != "4")
                                                ? Colors.black
                                                : ColorConstant.whiteA700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: size.width * 0.42,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                expYear = "5";
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: (expYear != "5")
                                                  ? Colors.white
                                                  : ColorConstant.purple900,
                                              textStyle: TextStyle(
                                                fontSize: size.width * 0.045,
                                              ),
                                            ),
                                            child: Text(
                                              ">7",
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: (expYear != "5")
                                                    ? Colors.black
                                                    : ColorConstant.whiteA700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.03,
                        ),
                        child: Text(
                          "Thân nhân được chăm sóc",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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
                            child: FutureBuilder<ElderModel>(
                              builder: (context, snapshot) {
                                if (snapshot.hasError) print(snapshot.error);
                                if (snapshot.hasData) {
                                  return ListView.separated(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    // itemCount: snapshot.data!.length,
                                    itemCount: snapshot.data!.data.length,
                                    separatorBuilder: (context, index) {
                                      return Container(
                                        width: size.width * 0.03,
                                      );
                                    },
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              chooseElderID = snapshot
                                                  .data!.data[index].id
                                                  .toString();
                                            });
                                          },
                                          child: ElderItemOnBookingWidget(
                                              context,
                                              snapshot.data!.data[index],
                                              chooseElderID));
                                    },
                                  );
                                } else {
                                  return const CircularProgressIndicator();
                                }
                              },
                              future: elderList,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Text(
                          "Điểm xếp hạng tối thiểu",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.02,
                        ),
                        child: RatingBar.builder(
                          itemSize: size.width * 0.1,
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) =>
                              Icon(
                                Icons.star,
                                color: ColorConstant.purple900,
                                // size: 10.0,
                              ),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Text(
                          "Tổng giá tiền đặt lịch(Dự tính)",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.width * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text('${calTotal().ceil().toString()} VNĐ'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Text(
                          "Ghi chú",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.purple900,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                          top: size.height * 0.01,
                        ),
                        child: StreamBuilder(
                            stream: bloc.descriptionStream,
                            builder: (context, snapshot) {
                              return TextField(
                                maxLines: 5,
                                controller: _descriptionController,
                                cursorColor: ColorConstant.purple900,
                                style: TextStyle(
                                    fontSize: size.width * 0.04,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffCED0D2), width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: ColorConstant.purple900),
                                  ),
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.width * 0.06,
                          right: size.width * 0.03,
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
                            child: const Text("Đăng tin"),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onBookingClick() async {
    List<AddBookingServiceRequestDto> addBookingServiceRequestDtos = [];
    int totalDuration = 0;
    listServiceObj.forEach((key, value) {
      addBookingServiceRequestDtos.add(AddBookingServiceRequestDto(id: key, duration: value));
      totalDuration += (value) as int;
    });
    double total = calTotal();
    String address = _addressController.text.trim();
    String description = _descriptionController.text.trim();
    String place = "";
    if (isHospital) {
      place = "Bệnh viện";
    } else {
      place = "Tại nhà";
    }


    Duration duration = Duration(minutes: totalDuration);
    DateTime endDateTime = startDateTime.add(duration);
    String startDateTimeStr = '${startDateTime.year}-${startDateTime.month}-${startDateTime.day}T${startDateTime.hour}:${startDateTime.minute}:00.000Z';
    String endDateTimeStr = '${endDateTime.year}-${endDateTime.month}-${endDateTime.day}T${endDateTime.hour}:${endDateTime.minute}:00.000Z';
    AddWorkingTimesDtoListElement addWorkingTimesDto = AddWorkingTimesDtoListElement(startDateTime: startDateTimeStr, endDateTime: endDateTimeStr);
    List<AddWorkingTimesDtoListElement> addWorkingTimesDtoList =[];
    addWorkingTimesDtoList.add(addWorkingTimesDto);

    bool isBooking = false;
    BookingFormModel booking = BookingFormModel(address: address,
        description: description,
        elderId: int.parse(chooseElderID),
        place: place,
        email: Globals.curUser!.data.email,
        totalPrice: total,
        addWorkingTimesDtoList: addWorkingTimesDtoList,
        addBookingServiceRequestDtos: addBookingServiceRequestDtos);
    print(booking.toString());
    isBooking = await bloc.createBooking(booking);
    if (isBooking) {
      showSuccessAlertDialog(context);
    } else {
      showFailAlertDialog(context);
    }
  }
}
