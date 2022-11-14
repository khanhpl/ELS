import 'package:els_sitter/core/models/booking_info_model.dart';
import 'package:els_sitter/presentation/splash_screen/splash_screen.dart';
import 'package:els_sitter/widgets/booking_item_detail_widget.dart';
import 'package:els_sitter/widgets/booking_item_widget.dart';
import 'package:flutter/material.dart';

import '../../blocs/booking_bloc.dart';
import '../../core/models/booking_model.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';

class HistoryBookingScreen extends StatefulWidget {
  const HistoryBookingScreen({super.key});
  @override
  State<HistoryBookingScreen> createState() => _HistoryBookingScreenState();
}

class _HistoryBookingScreenState extends State<HistoryBookingScreen>{
  final Future<BookingInfoModel> doneList = BookingBloc().getBookingByStatusName('DONE');
  final Future<BookingInfoModel> cancelList = BookingBloc().getBookingByStatusName('CANCEL');
  BookingBloc bloc = BookingBloc();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        // bottomOpacity: 0.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.whiteA700,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset(
            ImageConstant.imgArrowleft,
            height: size.height * 0.024,
            width: size.width * 0.03,
          ),
        ),
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
              "Lịch sử đặt lịch",
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
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Material(
            child: Container(
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Align(
                  child: Container(
                    width: size.width,
                    margin: EdgeInsets.only(
                      left: size.width*0.03,
                      right: size.width*0.03,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 1,
                          width: size.width,
                          margin: EdgeInsets.only(
                            top: size.width*0.03,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FutureBuilder<BookingInfoModel>(
                            builder: (context, snapshot) {
                              if (snapshot.hasError) print(snapshot.error);
                              if (snapshot.hasData) {
                                return ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  // itemCount: snapshot.data!.length,
                                  itemCount: snapshot.data!.data.length,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: size.height*0.02);
                                  },
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BookingItemDetailWidget(
                                                          booking: snapshot
                                                              .data!
                                                              .data[index])));
                                        },
                                        child: bookingItemWidget(
                                            context, snapshot.data!.data[index]));
                                  },
                                );
                              } else {
                                return const SplashScreen();
                              }
                            },
                            future: doneList,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FutureBuilder<BookingInfoModel>(
                            builder: (context, snapshot) {
                              if (snapshot.hasError) print(snapshot.error);
                              if (snapshot.hasData) {
                                return ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  // itemCount: snapshot.data!.length,
                                  itemCount: snapshot.data!.data.length,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: size.height*0.02);
                                  },
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BookingItemDetailWidget(
                                                          booking: snapshot
                                                              .data!
                                                              .data[index])));
                                        },
                                        child: bookingItemWidget(
                                            context, snapshot.data!.data[index]));
                                  },
                                );
                              } else {
                                return const SplashScreen();
                              }
                            },
                            future: cancelList,
                          ),
                        ),
                        Container(
                          height: 1,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}