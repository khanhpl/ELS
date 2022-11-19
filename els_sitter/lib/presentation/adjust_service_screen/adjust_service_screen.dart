import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

import '../../core/models/sitter_detail_data_model.dart';

class AdjustServiceScreen extends StatefulWidget {
  SitterDetailDataModel sitter;

  AdjustServiceScreen({super.key, required this.sitter});

  @override
  State<AdjustServiceScreen> createState() =>
      _AdjustServiceScreenState(sitter: this.sitter);
}

class _AdjustServiceScreenState extends State<AdjustServiceScreen> {
  SitterDetailDataModel sitter;

  _AdjustServiceScreenState({required this.sitter});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height * 0.08,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorConstant.purple900,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/accountScreen');
            },
            child: Image.asset(
              ImageConstant.imgArrowleft,
              height: size.height * 0.024,
              width: size.width * 0.03,
              color: ColorConstant.whiteA700,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(
              top: size.height * 0.01,
              bottom: size.height * 0.01,
            ),
            child: Text(
              "Điều chỉnh dịch vụ",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: ColorConstant.whiteA700,
                  fontSize: 26,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.00),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/addNewElderScreen');
          },
          elevation: 0.0,
          backgroundColor: ColorConstant.purple900,
          child: const Icon(Icons.add),
        ),
        body: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Align(
              child: Container(
                width: size.width,
                margin: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                            top: size.height * 0.03, left: size.width * 0.005),
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: sitter.sitterServicesResponseDtos.length,
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: size.height * 0.02,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: size.width * 0.03,
                                    left: size.width * 0.03,
                                    top: size.height * 0.02,
                                    bottom: size.height * 0.02),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffEEE2FF)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: size.height * 0.01,
                                          bottom: size.height * 0.01,
                                          left: size.width * 0.03),
                                      child: SizedBox(
                                        width: size.width * 0.8,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '${sitter.sitterServicesResponseDtos[index].name}',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Giá tiền: ${sitter.sitterServicesResponseDtos[index].price.ceil()} VNĐ/ phút\n'
                                                'Kinh nghiệm làm việc: ${sitter.sitterServicesResponseDtos[index].exp} năm',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.50),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          ImageConstant.imgArrowrightGray400,
                                          color: ColorConstant.black900,
                                          width: size.width * 0.02,
                                          height: size.width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
