import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

import '../../../blocs/sitter_bloc.dart';
import '../../../core/models/sitter_detail_data_model.dart';
import '../../../core/models/sitter_service_response_dto.dart';
import '../../../widgets/failWidget.dart';
import '../../../widgets/successWidget.dart';

class AdjustServiceDetailWidget extends StatefulWidget {
  SitterServicesResponseDto service;

  AdjustServiceDetailWidget({super.key, required this.service});

  @override
  State<AdjustServiceDetailWidget> createState() =>
      _AdjustServiceDetailWidgetState(service: this.service);
}

class _AdjustServiceDetailWidgetState extends State<AdjustServiceDetailWidget> {
  SitterServicesResponseDto service;

  _AdjustServiceDetailWidgetState({required this.service});

  SitterBlocs blocs = SitterBlocs();

  final TextEditingController _newPriceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.purple900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.5,
                  margin: EdgeInsets.all(size.width * 0.05),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    border: Border.all(
                      color: ColorConstant.whiteA700,
                      width: 5.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.01,
                        bottom: size.height * 0.005,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Điều chỉnh giá dịch vụ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 1,
                            width: size.width,
                            margin: EdgeInsets.only(
                              left: size.width * 0.015,
                              top: size.height * 0.015,
                              right: size.width * 0.015,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray700,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: size.width * 0.05,
                                    top: size.height * 0.02),
                                child: Row(
                                  children: [
                                    Text(
                                      "Tên dịch vụ: ",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      service.name,
                                      textAlign: TextAlign.right,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: ColorConstant.gray700,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: size.width * 0.05,
                                    top: size.height * 0.02),
                                child: Row(
                                  children: [
                                    Text(
                                      'Giá mỗi ${service.duration} phút: ',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '${service.price.ceil()} VNĐ',
                                      textAlign: TextAlign.right,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: ColorConstant.gray700,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: size.width * 0.05,
                                    top: size.height * 0.02),
                                child: Row(
                                  children: [
                                    Text(
                                      'Giá mong muốn:',
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: size.height * 0.015,
                                ),
                                child: StreamBuilder(
                                  stream: null,
                                  builder: (context, snapshot) => TextField(
                                    style: TextStyle(
                                        fontSize: size.width * 0.04, color: Colors.black),
                                    controller: _newPriceController,
                                    decoration: const InputDecoration(
                                      // errorText: snapshot.hasError
                                      //     ? snapshot.error.toString()
                                      //     : null,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      child: SizedBox(
                        width: size.width * 0.42,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        ColorConstant.whiteA700),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        ColorConstant.redFail),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        side: BorderSide(
                                            color: ColorConstant.redFail)))),
                            onPressed: () => Navigator.pushNamed(context, "/accountScreen"),
                            child: const Text("HỦY",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.01,
                      ),
                      child: SizedBox(
                        width: size.width * 0.42,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        ColorConstant.purple900),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        ColorConstant.BG),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        side: BorderSide(
                                            color: ColorConstant.BG)))),
                            onPressed: () {
                              upSalaryForm();
                            },
                            child: const Text("GỬI",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  upSalaryForm() async {
    String newPrice = _newPriceController.text.trim();
    String id = service.id.toString();
    bool isRequest = false;
    isRequest = await blocs.upSalaryForm(newPrice, id);
    if(isRequest) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SuccessScreen(
                alert: 'Thành công',
                detail:
                'Yêu cầu điều chỉnh giá dịch vụ đã được gửi, vui lòng đợi phê duyệt từ hệ thống',
                buttonName: 'Trở về',
                navigatorName: '/accountScreen',
              )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FailScreen(
                  alert: 'Thất bại',
                  detail:
                  'Yêu cầu điều chỉnh giá dịch vụ chưa được gửi, vui lòng thử lại',
                  buttonName: 'Quay lại',
                  navigatorName: '/accountScreen')));
    }
  }
}
