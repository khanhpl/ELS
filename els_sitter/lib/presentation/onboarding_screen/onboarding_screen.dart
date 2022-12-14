

import 'package:els_sitter/presentation/onboarding_screen/widgets/onboarding_bottomsheet.dart';
import 'package:els_sitter/presentation/onboarding_screen/widgets/render_boarding_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class OnboardingScreen extends StatelessWidget {
  List<Slide> slides = [];
  OnboardingScreen({super.key});
  Widget inputContent(index) {
    if (index == 0) {
      return OnboardingBottomsheet(
        title: "Tìm kiếm ở xung quanh bạn",
        description: "Khám phá nhân viên chăm sóc tốt nhất mà bạn muốn theo vị trí hoặc vùng lân cận của bạn",);
    }else if(index == 1){
      return OnboardingBottomsheet(title: "Đặt lịch dễ dàng", description: "Chọn khoảng thời gian mà bạn muốn đặt lịch");
    }else{
      return OnboardingBottomsheet(title: "Kết nối với người thân dễ hơn", description: "Luôn cập nhật mọi lúc mọi nơi trong thời gian thực bằng tin nhắn");
    }
  }

  List<Widget> renderListCustomTabs() {
    return List.generate(3, (index) => inputContent(index));
  }


  @override
  Widget build(BuildContext context) {
    void onDonePress() {
      Navigator.pushNamed(context, '/loginScreen');
    }
    return Container(
      margin: EdgeInsets.all(0),
      child: IntroSlider(
        renderNextBtn: renderNextBtn(),
        renderSkipBtn: renderSkipBtn(),
        renderDoneBtn: renderDoneBtn(),
        listCustomTabs: renderListCustomTabs(),
        onDonePress: onDonePress,
      ),
    );
  }


}


