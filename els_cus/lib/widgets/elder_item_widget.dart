import 'package:els_cus_mobile/core/models/elder_data_model.dart';

import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/widgets/elder_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ElderItemWidget extends StatelessWidget {
  ElderDataModel elder;

  ElderItemWidget({super.key, required this.elder});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.03),
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorConstant.BG, width: 5.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(15),
        color: ColorConstant.BG,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ElderDetailWidget(elder: elder)),
          );
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.01,
              bottom: size.height * 0.005,
              left: size.width * 0.03,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.height * 0.01,
                    right: size.width * 0.03,
                    bottom: size.height * 0.01,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray400,
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 1,
                              ),
                              child: Text(
                                elder.name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.008,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.015,
                              ),
                              child: Text(
                                (elder.gender == 'Nam') ? "Nam" : "N???",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: 2,
                              margin: const EdgeInsets.only(
                                left: 10,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray400,
                                borderRadius: BorderRadius.circular(
                                  1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.008,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.01,
                                bottom: size.height * 0.005,
                              ),
                              child: Text(
                                getAge() + " Tu???i",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getAge() {
    String age = "";
    String birthYear = elder.dob.toString().split('-')[0];
    final now = DateTime.now();
    String formatter = DateFormat('yMd').format(now);
    String curYear = formatter.split('/')[2];
    int intAge = int.parse(curYear) - int.parse(birthYear);
    age = intAge.toString();
    return age;
  }
}
