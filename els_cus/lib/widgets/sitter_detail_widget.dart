import 'package:els_cus_mobile/core/models/sitter_data_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/booking_screen/widget/review_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SitterDetailWidget extends StatefulWidget {
  SitterDataModel sitter;

  SitterDetailWidget({super.key, required this.sitter});

  @override
  State<SitterDetailWidget> createState() =>
      _SitterDetailWidgetState(sitter: this.sitter);
}

class _SitterDetailWidgetState extends State<SitterDetailWidget> {
  SitterDataModel sitter;

  _SitterDetailWidgetState({required this.sitter});

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
                            left: size.width * 0.03,
                            top: size.height * 0.01,
                            right: size.width * 0.03,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                ImageConstant.imgArrowleft,
                                height: size.height * 0.024,
                                width: size.width * 0.03,
                              ),
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
                            Image.asset(
                              ImageConstant.imgGlobe,
                              height: size.width * 0.03,
                              width: size.width * 0.03,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: size.width * 0.03,
                                right: size.width * 0.03,
                              ),
                              height: size.width * 0.2,
                              width: size.width * 0.2,
                              decoration: BoxDecoration(
                                color: ColorConstant.gray400,
                                borderRadius: BorderRadius.circular(43),
                              ),
                            ),
                            Image.asset(
                              ImageConstant.imgFavorite,
                              height: size.width * 0.03,
                              width: size.width * 0.03,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                sitter.fullname,
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
                                  left: size.width * 0.03,
                                ),
                                child: Image.asset(
                                  ImageConstant.imgCheckmark,
                                  height: size.width * 0.03,
                                  width: size.width * 0.03,
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
                            top: size.height * 0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Trò chuyện cùng",
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
                                  top: size.height * 0.006,
                                  left: size.width * 0.02,
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
                                  left: size.width * 0.02,
                                ),
                                child: Text(
                                  "20 năm kinh nghiệm",
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
                            left: size.width * 0.03,
                            top: size.height * 0.02,
                            right: size.width * 0.03,
                            bottom: size.height * 0.02,
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
                                    "Xếp hạng",
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
                              SizedBox(width: size.width * 0.05),
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
                                    "Đánh giá",
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
                              SizedBox(width: size.width * 0.05),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    getAge(),
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
                                    "Tuổi",
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
                              SizedBox(width: size.width * 0.05),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    sitter.gender,
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
                                    "Giới tính",
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
                  top: size.height * 0.02,
                  left: size.width * 0.03,
                  right: size.width * 0.03,
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
                                    left: size.width * 0.03,
                                    top: size.height * 0.01,
                                    right: size.width * 0.03,
                                  ),
                                  child: Text(
                                    "Giá theo giờ",
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
                                    left: size.width * 0.03,
                                    top: size.height * 0.006,
                                    right: size.width * 0.03,
                                    bottom: size.height * 0.01,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "20000đ",
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
                                          left: size.width * 0.02,
                                        ),
                                        child: Text(
                                          "mỗi giờ",
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
                          SizedBox(width: size.width * 0.05),
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
                                    left: size.width * 0.03,
                                    top: size.height * 0.01,
                                    right: size.width * 0.03,
                                  ),
                                  child: Text(
                                    "Được thuê",
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
                                    left: size.width * 0.03,
                                    top: size.height * 0.006,
                                    right: size.width * 0.03,
                                    bottom: size.height * 0.01,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          left: size.width * 0.02,
                                        ),
                                        child: Text(
                                          "lần",
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: Text(
                        "Dịch vụ có thể đáp ứng ",
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: Text(
                        "Đã được xác minh bởi Doanh nghiệp",
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "⊙ ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "Lên kế hoạch và lịch trình hoạt động\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "⊙",
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
                              text: "Sắp xếp hỗ trợ di chuyển\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "⊙ ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "Tập luyện nhận thức\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "⊙",
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
                              text: "Chuẩn bị bữa ăn\n",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "⊙ ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                              ),
                            ),
                            TextSpan(
                              text: "Nhắc nhở uống thuốc",
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
                        top: size.height * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageConstant.imgPlus,
                            height: size.width * 0.03,
                            width: size.width * 0.03,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.03,
                            ),
                            child: Text(
                              "Xem thêm 12 dịch vụ",
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Mô tả",
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
                          SizedBox(height: size.height * 0.015),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Xin chào, tôi là T. Hiện tôi đang tìm kiếm cơ hội  trong việc chăm sóc sức khỏe tại thành phố Hồ Chí Minh. Có thể chắc chắn rằng tôi sẽ cố gắng để trở thành một nhân viên chu đáo, năng động và luôn có mặt khi cần thiết. Tôi cảm thấy thoải mái khi làm m",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.33,
                                  ),
                                ),
                                TextSpan(
                                  text: "….",
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
                                  text: "đọc thêm",
                                  style: TextStyle(
                                    color: ColorConstant.purple900,
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: Text(
                        "Địa chỉ",
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: Text(
                        "43 Quang Trung, Hiệp Phú\nthành phố Thủ Đức, thành phố Hồ Chí Minh",
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
                        left: size.width * 0.03,
                        top: size.height * 0.02,
                        right: size.width * 0.03,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tài khoản mạng xã hội",
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.02,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  ImageConstant.imgFacebook,
                                  width: size.width * 0.12,
                                  height: size.width * 0.12,
                                ),
                                Image.asset(
                                  ImageConstant.imgCamera,
                                  width: size.width * 0.12,
                                  height: size.width * 0.12,
                                ),
                                Image.asset(
                                  ImageConstant.imgIconyoutube,
                                  width: size.width * 0.12,
                                  height: size.width * 0.12,
                                ),
                                Image.asset(
                                  ImageConstant.imgTwitter,
                                  width: size.width * 0.12,
                                  height: size.width * 0.12,
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
                    //         "Phản hồi từ khách hàng",
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
                    //                     padding: getPadding(
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
                    //                     padding: getPadding(
                    //                       left: 20,
                    //                       top: 4,
                    //                       right: 20,
                    //                       bottom: 16,
                    //                     ),
                    //                     child: Text(
                    //                       "trên 5",
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
                    //             CommonImageView(
                    //               svgPath: ImageConstant.imgBars,
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
                    //       padding: getPadding(
                    //         left: 18,
                    //         top: 20,
                    //         right: 18,
                    //       ),
                    //       child: Text(
                    //         "Đánh giá",
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
                    //         padding: getPadding(
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
                    //               padding: getPadding(
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
                    //                             padding: getPadding(
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
                    //                     padding: getPadding(
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
                    //                           padding: getPadding(
                    //                             left: 1,
                    //                             right: 10,
                    //                           ),
                    //                           child: Text(
                    //                             "Văn A",
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
                    //                           padding: getPadding(
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
                    //                                 padding: getPadding(
                    //                                   bottom: 4,
                    //                                 ),
                    //                                 child: CommonImageView(
                    //                                   svgPath:
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
                    //                                 padding: getPadding(
                    //                                   left: 9,
                    //                                   top: 1,
                    //                                 ),
                    //                                 child: Text(
                    //                                   "15 phút trước",
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
                    //                 "Mẹ của tôi bị gãy cả hai tay nên các nhân viên đã giúp bà trong những vấn đề sinh hoạt hằng ngày. Họ là người bạn đồng hành của mẹ tôi. Tôi thích T, nhân viên phụ trách lần này, cô ấy rất tuyệt vời",
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
                    //         padding: getPadding(
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
                    //               padding: getPadding(
                    //                 bottom: 1,
                    //               ),
                    //               child: CommonImageView(
                    //                 svgPath: ImageConstant.imgPlus,
                    //                 height: getVerticalSize(
                    //                   13.00,
                    //                 ),
                    //                 width: getHorizontalSize(
                    //                   16.00,
                    //                 ),
                    //               ),
                    //             ),
                    //             Padding(
                    //               padding: getPadding(
                    //                 left: 5,
                    //                 top: 1,
                    //               ),
                    //               child: Text(
                    //                 "Xem thêm 7 đánh giá khác",
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
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                            top: size.height * 0.02,
                            bottom: size.height * 0.02),
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReviewBookingScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: ColorConstant.purple900,
                                textStyle: TextStyle(
                                  fontSize: size.width * 0.045,
                                ),
                              ),
                              child: const Text("Đặt lịch ngay"),
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

  String getAge() {
    String age = "";
    String birthYear = sitter.dob.split('-')[0];
    final now = DateTime.now();
    String formatter = DateFormat('yMd').format(now);
    String curYear = formatter.split('/')[2];
    int intAge = int.parse(curYear) - int.parse(birthYear);
    age = intAge.toString();
    return age;
  }
}
