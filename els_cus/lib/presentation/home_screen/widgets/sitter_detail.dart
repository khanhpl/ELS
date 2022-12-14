
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class SitterDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.gray50,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: size.width,
                          margin: EdgeInsets.only(
                            left: size.width*0.03,
                            top: size.height*0.01,
                            right: size.width*0.03,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(ImageConstant.imgArrowleft,height: size.height*0.024, width: size.width*0.03,),

                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(ImageConstant.imgGlobe,height: size.width*0.03, width: size.width*0.03,),
                            Container(
                              margin: EdgeInsets.only(
                                left: size.width*0.03,
                                right: size.width*0.03,
                              ),
                              height: size.width*0.2,
                              width: size.width*0.2,
                              decoration: BoxDecoration(
                                color: ColorConstant.gray400,
                                borderRadius: BorderRadius.circular(
                                  43
                                ),
                              ),

                            ),
                            Image.asset(ImageConstant.imgFavorite,height: size.width*0.03, width: size.width*0.03,),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height*0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Phan Th??? T",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 28,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 1.00,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width*0.03,
                                ),
                                child: Image.asset(ImageConstant.imgCheckmark,height: size.width*0.03, width: size.width*0.03,),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height*0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Tr?? chuy???n c??ng",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                              Container(
                                height: 3,
                                width: 3,
                                margin: EdgeInsets.only(
                                  top: size.height*0.006,
                                  left: size.width*0.02,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray400,
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width*0.02,
                                ),
                                child: Text(
                                  "20 n??m kinh nghi???m",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: size.width*0.03,
                            top: size.height*0.02,
                            right: size.width*0.03,
                            bottom: size.height*0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "92",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w100,
                                      height: 1.00,
                                    ),
                                  ),
                                  Text(
                                    "X???p h???ng",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: 13,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.00,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: size.width*0.05),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "147",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w100,
                                      height: 1.00,
                                    ),
                                  ),
                                  Text(
                                    "????nh gi??",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: 13,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.00,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: size.width*0.05),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "35",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: 17,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w100,
                                      height: 1.00,
                                    ),
                                  ),
                                  Text(
                                    "Tu???i",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray400,
                                      fontSize: 13,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.00,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height*0.02,
                  left: size.width*0.03,
                  right: size.width*0.03,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              border: Border.all(
                                color: ColorConstant.bluegray50,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width*0.03,
                                    top: size.height*0.01,
                                    right: size.width*0.03,
                                  ),
                                  child: Text(
                                    "Gi?? theo gi???",
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width*0.03,
                                    top: size.height*0.006,
                                    right: size.width*0.03,
                                    bottom: size.height*0.01,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "20000??",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: 17,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 1.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width*0.02,
                                        ),
                                        child: Text(
                                          "m???i gi???",
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
                              ],
                            ),
                          ),
                          SizedBox(width: size.width*0.05),
                          Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              border: Border.all(
                                color: ColorConstant.bluegray50,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width*0.03,
                                    top: size.height*0.01,
                                    right: size.width*0.03,
                                  ),
                                  child: Text(
                                    "???????c thu??",
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width*0.03,
                                    top: size.height*0.006,
                                    right: size.width*0.03,
                                    bottom: size.height*0.01,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "362",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: 17,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 1.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width*0.02,
                                        ),
                                        child: Text(
                                          "l???n",
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: Text(
                        "D???ch v??? c?? th??? ????p ???ng ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: Text(
                        "???? ???????c x??c minh b???i Doanh nghi???p",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.bluegray400,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "??? ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "L??n k??? ho???ch v?? l???ch tr??nh ho???t ?????ng\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "???",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "S???p x???p h??? tr??? di chuy???n\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "??? ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "T???p luy???n nh???n th???c\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "???",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize:15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "Chu???n b??? b???a ??n\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "??? ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "Nh???c nh??? u???ng thu???c",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height*0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(ImageConstant.imgPlus,height: size.width*0.03, width: size.width*0.03,),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width*0.03,
                            ),
                            child: Text(
                              "Xem th??m 12 d???ch v???",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.bluegray400,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w100,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "M?? t???",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 1.00,
                            ),
                          ),
                          SizedBox(height: size.height*0.015),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  "Xin ch??o, t??i l?? T. Hi???n t??i ??ang t??m ki???m c?? h???i  trong vi???c ch??m s??c s???c kh???e t???i th??nh ph??? H??? Ch?? Minh. C?? th??? ch???c ch???n r???ng t??i s??? c??? g???ng ????? tr??? th??nh m???t nh??n vi??n chu ????o, n??ng ?????ng v?? lu??n c?? m???t khi c???n thi???t. T??i c???m th???y tho???i m??i khi l??m m",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                                TextSpan(
                                  text: "???.",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                                TextSpan(
                                  text: " ",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                                TextSpan(
                                  text: "?????c th??m",
                                  style: TextStyle(
                                    color:
                                    ColorConstant.purple900,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: Text(
                        "?????a ch???",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: Text(
                        "43 Quang Trung, Hi???p Ph??\nth??nh ph??? Th??? ?????c, th??nh ph??? H??? Ch?? Minh",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width*0.03,
                        top: size.height*0.02,
                        right: size.width*0.03,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "T??i kho???n m???ng x?? h???i",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: 17  ,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 1.00,
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
                                Image.asset(ImageConstant.imgFacebook,
                                  width: size.width*0.12,
                                  height: size.width*0.12,
                                ),
                                Image.asset(ImageConstant.imgCamera,
                                  width: size.width*0.12,
                                  height: size.width*0.12,
                                ),
                                Image.asset(ImageConstant.imgIconyoutube,
                                  width: size.width*0.12,
                                  height: size.width*0.12,
                                ),
                                Image.asset(ImageConstant.imgTwitter,
                                  width: size.width*0.12,
                                  height: size.width*0.12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Padding(
                    //       padding: EdgeInsets.only(
                    //         left: size.width*0.03,
                    //         top: size.height*0.02,
                    //         right: size.width*0.03,
                    //       ),
                    //       child: Text(
                    //         "Ph???n h???i t??? kh??ch h??ng",
                    //         overflow: TextOverflow.ellipsis,
                    //         textAlign: TextAlign.left,
                    //         style: TextStyle(
                    //           color: ColorConstant.black900,
                    //           fontSize: 17,
                    //           fontFamily: 'Roboto',
                    //           fontWeight: FontWeight.w700,
                    //           height: 1.00,
                    //         ),
                    //       ),
                    //     ),
                    //     Align(
                    //       alignment: Alignment.center,
                    //       child: Padding(
                    //         padding: EdgeInsets.only(
                    //           left: size.width*0.03,
                    //           top: size.height*0.02,
                    //           right: size.width*0.03,
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           mainAxisSize: MainAxisSize.max,
                    //           children: [
                    //             Container(
                    //               decoration: BoxDecoration(
                    //                 color: ColorConstant.whiteA700,
                    //                 borderRadius: BorderRadius.circular(
                    //                   8,
                    //                 ),
                    //                 border: Border.all(
                    //                   color: ColorConstant.bluegray50,
                    //                   width: 1,
                    //                 ),
                    //               ),
                    //               child: Column(
                    //                 mainAxisSize: MainAxisSize.min,
                    //                 crossAxisAlignment: CrossAxisAlignment.center,
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: [
                    //                   Padding(
                    //                     padding: EdgeInsets.only(
                    //                       left: 20,
                    //                       top: 15,
                    //                       right: 19,
                    //                     ),
                    //                     child: Text(
                    //                       "4.6",
                    //                       overflow: TextOverflow.ellipsis,
                    //                       textAlign: TextAlign.left,
                    //                       style: TextStyle(
                    //                         color: ColorConstant.black900,
                    //                         fontSize: getFontSize(
                    //                           34,
                    //                         ),
                    //                         fontFamily: 'Roboto',
                    //                         fontWeight: FontWeight.w700,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   Padding(
                    //                     padding: EdgeInsets.only(
                    //                       left: 20,
                    //                       top: 4,
                    //                       right: 20,
                    //                       bottom: 16,
                    //                     ),
                    //                     child: Text(
                    //                       "tr??n 5",
                    //                       overflow: TextOverflow.ellipsis,
                    //                       textAlign: TextAlign.left,
                    //                       style: TextStyle(
                    //                         color: ColorConstant.gray700,
                    //                         fontSize: getFontSize(
                    //                           13,
                    //                         ),
                    //                         fontFamily: 'Roboto',
                    //                         fontWeight: FontWeight.w400,
                    //                         height: 1.00,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             Image.asset(
                    //               ImageConstant.imgBars,
                    //               height: getVerticalSize(
                    //                 83.00,
                    //               ),
                    //               width: getHorizontalSize(
                    //                 272.00,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.only(
                    //         left: 18,
                    //         top: 20,
                    //         right: 18,
                    //       ),
                    //       child: Text(
                    //         "????nh gi??",
                    //         overflow: TextOverflow.ellipsis,
                    //         textAlign: TextAlign.left,
                    //         style: TextStyle(
                    //           color: ColorConstant.bluegray400,
                    //           fontSize: getFontSize(
                    //             15,
                    //           ),
                    //           fontFamily: 'Roboto',
                    //           fontWeight: FontWeight.w400,
                    //           height: 1.00,
                    //         ),
                    //       ),
                    //     ),
                    //     Align(
                    //       alignment: Alignment.center,
                    //       child: Padding(
                    //         padding: EdgeInsets.only(
                    //           left: 18,
                    //           top: 17,
                    //           right: 18,
                    //         ),
                    //         child: Column(
                    //           mainAxisSize: MainAxisSize.min,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           children: [
                    //             Padding(
                    //               padding: EdgeInsets.only(
                    //                 right: 10,
                    //               ),
                    //               child: Row(
                    //                 mainAxisAlignment: MainAxisAlignment.start,
                    //                 crossAxisAlignment: CrossAxisAlignment.end,
                    //                 mainAxisSize: MainAxisSize.max,
                    //                 children: [
                    //                   Container(
                    //                     height: getVerticalSize(
                    //                       41.00,
                    //                     ),
                    //                     width: getHorizontalSize(
                    //                       45.00,
                    //                     ),
                    //                     child: Stack(
                    //                       alignment: Alignment.center,
                    //                       children: [
                    //                         Align(
                    //                           alignment: Alignment.centerLeft,
                    //                           child: Container(
                    //                             height: getVerticalSize(
                    //                               41.00,
                    //                             ),
                    //                             width: getHorizontalSize(
                    //                               45.00,
                    //                             ),
                    //                             decoration: BoxDecoration(
                    //                               color: ColorConstant.gray400,
                    //                               borderRadius: BorderRadius.circular(
                    //                                 getHorizontalSize(
                    //                                   22.82,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                         Align(
                    //                           alignment: Alignment.center,
                    //                           child: Padding(
                    //                             padding: EdgeInsets.only(
                    //                               left: 8,
                    //                               top: 17,
                    //                               right: 8,
                    //                               bottom: 15,
                    //                             ),
                    //                             child: Text(
                    //                               "40 x 40",
                    //                               overflow: TextOverflow.ellipsis,
                    //                               textAlign: TextAlign.left,
                    //                               style: TextStyle(
                    //                                 color: ColorConstant.bluegray400,
                    //                                 fontSize: getFontSize(
                    //                                   9,
                    //                                 ),
                    //                                 fontFamily: 'Roboto',
                    //                                 fontWeight: FontWeight.w100,
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   Padding(
                    //                     padding: EdgeInsets.only(
                    //                       left: 9,
                    //                       top: 7,
                    //                       bottom: 1,
                    //                     ),
                    //                     child: Column(
                    //                       mainAxisSize: MainAxisSize.min,
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       mainAxisAlignment: MainAxisAlignment.start,
                    //                       children: [
                    //                         Padding(
                    //                           padding: EdgeInsets.only(
                    //                             left: 1,
                    //                             right: 10,
                    //                           ),
                    //                           child: Text(
                    //                             "V??n A",
                    //                             overflow: TextOverflow.ellipsis,
                    //                             textAlign: TextAlign.left,
                    //                             style: TextStyle(
                    //                               color: ColorConstant.black900,
                    //                               fontSize: getFontSize(
                    //                                 15,
                    //                               ),
                    //                               fontFamily: 'Roboto',
                    //                               fontWeight: FontWeight.w400,
                    //                               height: 1.00,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding: EdgeInsets.only(
                    //                             top: 4,
                    //                           ),
                    //                           child: Row(
                    //                             mainAxisAlignment:
                    //                             MainAxisAlignment.start,
                    //                             crossAxisAlignment:
                    //                             CrossAxisAlignment.center,
                    //                             mainAxisSize: MainAxisSize.max,
                    //                             children: [
                    //                               Padding(
                    //                                 padding: EdgeInsets.only(
                    //                                   bottom: 4,
                    //                                 ),
                    //                                 child: Image.asset(
                    //                                   pngPath:
                    //                                   ImageConstant.imgMinimize,
                    //                                   height: getVerticalSize(
                    //                                     10.00,
                    //                                   ),
                    //                                   width: getHorizontalSize(
                    //                                     61.00,
                    //                                   ),
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: EdgeInsets.only(
                    //                                   left: 9,
                    //                                   top: 1,
                    //                                 ),
                    //                                 child: Text(
                    //                                   "15 ph??t tr?????c",
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                   textAlign: TextAlign.left,
                    //                                   style: TextStyle(
                    //                                     color:
                    //                                     ColorConstant.bluegray400,
                    //                                     fontSize: getFontSize(
                    //                                       12,
                    //                                     ),
                    //                                     fontFamily: 'Roboto',
                    //                                     fontWeight: FontWeight.w400,
                    //                                     height: 1.00,
                    //                                   ),
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             Container(
                    //               width: getHorizontalSize(
                    //                 380.00,
                    //               ),
                    //               margin: getMargin(
                    //                 top: 11,
                    //               ),
                    //               child: Text(
                    //                 "M??? c???a t??i b??? g??y c??? hai tay n??n c??c nh??n vi??n ???? gi??p b?? trong nh???ng v???n ????? sinh ho???t h???ng ng??y. H??? l?? ng?????i b???n ?????ng h??nh c???a m??? t??i. T??i th??ch T, nh??n vi??n ph??? tr??ch l???n n??y, c?? ???y r???t tuy???t v???i",
                    //                 maxLines: null,
                    //                 textAlign: TextAlign.left,
                    //                 style: TextStyle(
                    //                   color: ColorConstant.black900,
                    //                   fontSize: getFontSize(
                    //                     15,
                    //                   ),
                    //                   fontFamily: 'Roboto',
                    //                   fontWeight: FontWeight.w400,
                    //                   height: 1.33,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     Align(
                    //       alignment: Alignment.center,
                    //       child: Padding(
                    //         padding: EdgeInsets.only(
                    //           left: 18,
                    //           top: 25,
                    //           right: 18,
                    //           bottom: 290,
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: [
                    //             Padding(
                    //               padding: EdgeInsets.only(
                    //                 bottom: 1,
                    //               ),
                    //               child: Image.asset(
                    //                 ImageConstant.imgPlus,
                    //                 height: getVerticalSize(
                    //                   13.00,
                    //                 ),
                    //                 width: getHorizontalSize(
                    //                   16.00,
                    //                 ),
                    //               ),
                    //             ),
                    //             Padding(
                    //               padding: EdgeInsets.only(
                    //                 left: 5,
                    //                 top: 1,
                    //               ),
                    //               child: Text(
                    //                 "Xem th??m 7 ????nh gi?? kh??c",
                    //                 overflow: TextOverflow.ellipsis,
                    //                 textAlign: TextAlign.left,
                    //                 style: TextStyle(
                    //                   color: ColorConstant.bluegray400,
                    //                   fontSize: getFontSize(
                    //                     14,
                    //                   ),
                    //                   fontFamily: 'Roboto',
                    //                   fontWeight: FontWeight.w100,
                    //                   height: 1.00,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: size.width*0.03,
                          right: size.width*0.03,
                          top: size.height*0.02,
                          bottom: size.height*0.02
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,

                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.05,
                            right: size.width * 0.05,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewBookingScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: ColorConstant.purple900,
                                textStyle: TextStyle(
                                  fontSize: size.width * 0.045,
                                ),
                              ),
                              child: const Text("?????t l???ch ngay"),
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
    );
  }
}
