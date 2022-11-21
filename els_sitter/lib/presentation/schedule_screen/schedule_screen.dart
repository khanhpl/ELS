

import 'package:els_sitter/core/utils/color_constant.dart';
import 'package:els_sitter/presentation/schedule_screen/widget/in_progress_widget.dart';
import 'package:els_sitter/presentation/schedule_screen/widget/up_comming_widget.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    TabBar createTabBar() {
      return TabBar(
        indicatorColor: ColorConstant.purple900,
        tabs: [
          Container(
            width: size.width*0.45,
            child: const Text(
              "Sắp diễn ra ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
          Container(
            width: size.width*0.45,
            child: const Text(
              textAlign: TextAlign.center,
              "Đang diễn ra ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
        ],
        isScrollable: true,
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height * 0.08,
          // bottomOpacity: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorConstant.whiteA700,
          title: Container(
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: size.height * 0.01,
                bottom: size.height * 0.01,
              ),
              child: Text(
                "Lịch Trình",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.purple900,
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 1.00,
                ),
              ),
            ),
          ),
          bottom: createTabBar(),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: TabBarView(children: [
          Material(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height*0.03
              ),
              child: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      UpcommingWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Material(
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height*0.03
              ),
              child: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      InprogressWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
