import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double ratingStar = 0.0;
  bool isDiligent = false;
  bool isOnTime = false;
  bool isEnthusiasm = false;
  bool isOther = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.purple900,
        toolbarHeight: size.height * 0.08,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Đánh Giá Chăm Sóc Viên',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.03,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding:
            EdgeInsets.fromLTRB(size.width * 0.03, 0, size.width * 0.03, 0),
        color: ColorConstant.whiteA700,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              Container(
                height: size.height * 0.15,
                padding: EdgeInsets.all(size.width * 0.03),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 1,
                    color: ColorConstant.purple900,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: size.height * 0.1,
                      width: size.width * 0.25,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/icon.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Đánh giá Chăm sóc viên',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            RatingBar.builder(
                              itemSize: 30.0,
                              initialRating: 0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.yellow[600],
                              ),
                              onRatingUpdate: (rating) {
                                ratingStar = rating;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                children: [
                  Checkbox(
                    value: isDiligent,
                    onChanged: (value) {
                      setState(() {
                        isDiligent = value!;
                      });
                    },
                    checkColor: ColorConstant.purple900,
                    activeColor: Colors.white,
                  ),
                  Text(
                    'Siêng Năng',
                    style: TextStyle(
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isOnTime,
                    onChanged: (bool? value) {
                      setState(() {
                        isOnTime = value!;
                      });
                    },
                    checkColor: ColorConstant.purple900,
                    activeColor: Colors.white,
                  ),
                  Text(
                    'Đúng giờ',
                    style: TextStyle(
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isEnthusiasm,
                    onChanged: (value) {
                      setState(() {
                        isEnthusiasm = value!;
                      });
                    },
                    checkColor: ColorConstant.purple900,
                    activeColor: Colors.white,
                  ),
                  Text(
                    'Nhiệt tình',
                    style: TextStyle(
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isOther,
                    onChanged: (value) {
                      setState(() {
                        isOther = value!;
                      });
                    },
                    checkColor: ColorConstant.purple900,
                    activeColor: Colors.white,
                  ),
                  Text(
                    'Khác',
                    style: TextStyle(
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.04),
              Container(
                padding: EdgeInsets.only(left: size.width * 0.03),
                alignment: Alignment.center,
                width: size.width,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: ColorConstant.purple900),
                ),
                child: TextField(
                  cursorColor: ColorConstant.purple900,
                  maxLines: 3,
                  enabled: (isOther) ? true : false,
                  decoration: InputDecoration.collapsed(
                    hintText: "Nhận xét của bạn",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) => ColorConstant.purple900),
                ),
                onPressed: () {
                  print('Test rating star: ${ratingStar.toString()}');
                  // _showConfirmDialog();
                },
                child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: Text('Xác nhận'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showConfirmDialog() {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Xác nhận đánh giá'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Xác nhận đánh giá'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Xác nhận',
                style: TextStyle(color: ColorConstant.purple900),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                'Hủy',
                style: TextStyle(color: ColorConstant.purple900),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
