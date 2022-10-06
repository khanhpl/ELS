import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddWorkScreen extends StatefulWidget {
  const AddWorkScreen({super.key});

  @override
  State<AddWorkScreen> createState() => _AddWorkScreenState();
}

class _AddWorkScreenState extends State<AddWorkScreen> {
  double _sliderValue = 20000;
  RangeValues _sliderRangeValues = RangeValues(15000, 100000);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                          top: size.height*0.05,
                        ),
                        child: Text(
                          "Tạo tin công việc",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: 34,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.05,
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "Địa chỉ",
                                prefixIcon: SizedBox(
                                    width: size.width * 0.05,
                                    child: Image.asset(
                                        ImageConstant.imgLocation16X13)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffCED0D2), width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6)))),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "Ngày",
                                prefixIcon: SizedBox(
                                    width: size.width * 0.05,
                                    child: Image.asset(
                                        ImageConstant.imgCalendar)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffCED0D2), width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6)))),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "Thời gian",
                                prefixIcon: SizedBox(
                                    width: size.width * 0.05,
                                    child:
                                        Image.asset(ImageConstant.imgClock)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffCED0D2), width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6)))),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "Loại dịch vụ",
                                prefixIcon: SizedBox(
                                    width: size.width * 0.05,
                                    child: Image.asset(
                                        ImageConstant.imgForward)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffCED0D2), width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6)))),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "Giới tính",
                                prefixIcon: SizedBox(
                                    width: size.width * 0.05,
                                    child: Image.asset(
                                        ImageConstant.imgLightbulb)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffCED0D2), width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6)))),
                          )),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.42,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                          ),
                                        ),
                                        child: const Text(
                                          "Không yêu cầu kinh nghiệm",
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: size.width*0.42,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              textStyle: TextStyle(
                                                fontSize: size.width * 0.045,
                                              ),
                                            ),
                                            child: const Text(
                                              "<1",
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: Colors.black,
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.42,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                          ),
                                        ),
                                        child: const Text(
                                          "1-3",
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: size.width*0.42,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              textStyle: TextStyle(
                                                fontSize: size.width * 0.045,
                                              ),
                                            ),
                                            child: const Text(
                                              "3-5",
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: Colors.black,
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.42,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          textStyle: TextStyle(
                                            fontSize: size.width * 0.045,
                                          ),
                                        ),
                                        child: const Text(
                                          "5-7",
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: size.width*0.42,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              textStyle: TextStyle(
                                                fontSize: size.width * 0.045,
                                              ),
                                            ),
                                            child: const Text(
                                              ">7",
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: Colors.black,
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
                          "Khung giá cả",
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
                        ),
                        child: Text(
                          "Từ 15000đ đến 100000đ",
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          top: size.height * 0.02,
                        ),
                        child: Text(
                          "Giá trung bình là 57500đ",
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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: size.height*0.05,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: size.width*0.03,
                            top: size.height*0.02,
                            right: size.width*0.03,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              SliderTheme(
                                data: SliderThemeData(
                                  trackShape: const RoundedRectSliderTrackShape(),
                                  activeTrackColor: ColorConstant.purple900,
                                  inactiveTrackColor:
                                      ColorConstant.bluegray50,
                                  thumbColor: ColorConstant.whiteA700,
                                  thumbShape: const RoundSliderThumbShape(),
                                ),
                                child: RangeSlider(
                                  values: _sliderRangeValues,
                                  min: 15000,
                                  max: 100000,
                                  onChanged: (RangeValues value) {
                                    setState(() {
                                      _sliderRangeValues = value;
                                    });
                                  },
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
                          right: size.width * 0.03,
                        ),
                        child: Text(
                          "Điểm xếp hạng tối thiểu",
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
                        ),
                        child: RatingBar.builder(
                          itemSize: size.width*0.1,
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
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
                          "Ghi chú",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.bluegray900,
                            fontSize: 13,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: size.width*0.03,
                          right: size.width*0.03,
                          top: size.height*0.03,

                        ),

                        child: TextField(
                          style: TextStyle(
                              fontSize: size.width * 0.04,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCED0D2), width: 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(6)))),
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
                          child:ElevatedButton(

                            onPressed: () {
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
                      SizedBox(height: size.height*0.1),
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
}
