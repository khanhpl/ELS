
import 'package:els_cus_mobile/core/models/sitter_data_model.dart';

import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/home_screen/widgets/sitter_detail.dart';
import 'package:els_cus_mobile/widgets/sitter_detail_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SitterItemWidget extends StatelessWidget {
  SitterDataModel sitter;
  SitterItemWidget({super.key, required this.sitter});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context) => SitterDetailWidget(sitter: sitter)),);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height*0.01,
            bottom: size.height*0.005,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.only(
                  left: size.width*0.03,
                  top: size.height*0.01,
                  right: size.width*0.03,
                  bottom: size.height*0.01,
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
                  left: size.width*0.03,
                  top: size.height*0.01,
                  bottom: size.height*0.01,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: size.width*0.02,
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
                              sitter.fullname,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width*0.015,
                            ),
                            child: Image.asset(ImageConstant.imgCheckmark,height: 12, width: 12,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height*0.008,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(ImageConstant.imgLocation16X13, height: 12, width: 10,),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width*0.015,
                            ),
                            child: Text(
                              "0 km",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray700,
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            height:2,
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
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 1,
                            ),
                            child: Text(
                              "Trò chuyện cùng",
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height*0.008,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(ImageConstant.imgMinimize,width: 54, height: 10,),

                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width*0.01,
                              bottom: size.height*0.005,
                            ),
                            child: Text(
                              "12",
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
                          Container(
                            height: 2,
                            width: 2,
                            margin: EdgeInsets.only(
                              top: size.height*0.005,
                              left: size.width*0.01,
                              bottom: size.height*0.005,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray400,
                              borderRadius: BorderRadius.circular(
                                1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width*0.01,
                              bottom: size.height*0.005,
                            ),
                            child: Text(
                              "48000đ/giờ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width*0.08,
                  top: size.height*0.01,
                  bottom: size.height*0.01,
                ),
                child: Image.asset(ImageConstant.imgContrast, height: 18, width: 20,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
