
import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatefulWidget {

  final String functionKey;
  const VerificationCodeScreen({super.key, required this.functionKey});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState(functionKey: this.functionKey);
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  final String functionKey;
  _VerificationCodeScreenState({required this.functionKey});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.bluegray50,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(
                            0,
                            1,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 9,
                            top: 11,
                            bottom: 12,
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              ImageConstant.imgArrowleftBlack900,
                              width: size.width * 0.03,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width*0.25,
                            top: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            "Xác thực số điện thoại",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black901,
                              fontSize: size.width * 0.045,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(
                    top: size.height * 0.03,
                    bottom: size.height * 0.03,
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: Text(
                    "Chúng tôi đã gửi mã xác minh của bạn tới (+84)123456789",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: size.width*0.045,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: size.height * 0.03,
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: TextField(
                    style: TextStyle(
                        fontSize: size.width * 0.04, color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Nhập mã xác thực",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffCED0D2), width: 1),
                            borderRadius:
                            BorderRadius.all(Radius.circular(6)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          onConfirmClick();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: ColorConstant.purple900,
                        textStyle: TextStyle(
                          fontSize: size.width * 0.045,
                        ),
                      ),
                      child: const Text("Xác thực"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.height * 0.03,
                    right: size.width * 0.03,
                    bottom: size.height * 0.5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 1,
                        ),
                        child: Text(
                          "Gửi lại",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: size.width*0.045,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                        ),
                        child: Text(
                          "Còn 1:20 phút",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.bluegray400,
                            fontSize: size.width*0.045,
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
        ),
      ),
    );
  }

  void onConfirmClick() {
    setState(() {
      if(!(functionKey.trim() == "")){
        if(functionKey == "forgotPasswordScreen"){
          Navigator.pushNamed(context, '/changePasswordScreen');
        }
      }
    });
  }
}
