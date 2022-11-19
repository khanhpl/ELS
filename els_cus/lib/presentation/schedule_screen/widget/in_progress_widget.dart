import 'package:els_cus_mobile/blocs/booking_bloc.dart';
import 'package:els_cus_mobile/core/models/booking_info_model.dart';
import 'package:els_cus_mobile/widgets/booking_item_detail_widget.dart';
import 'package:els_cus_mobile/widgets/booking_item_widget.dart';
import 'package:flutter/material.dart';

class InprogressWidget extends StatefulWidget {
  const InprogressWidget({super.key});

  @override
  State<InprogressWidget> createState() => _InprogressWidgetState();
}

class _InprogressWidgetState extends State<InprogressWidget> {
  final Future<BookingInfoModel> startList =
      BookingBloc().getBookingByStatusName('STARTING');

  final Future<BookingInfoModel> checkList =
      BookingBloc().getBookingByStatusName('WAITING_FOR_CUSTOMER_CHECK');
  BookingBloc bloc = BookingBloc();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Align(
              child: Container(
                width: size.width,
                margin: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                                return SizedBox(height: size.height * 0.02);
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookingItemDetailWidget(
                                                      booking: snapshot
                                                          .data!.data[index])));
                                    },
                                    child: bookingItemWidget(
                                        context, snapshot.data!.data[index]));
                              },
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                        future: startList,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
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
                                return SizedBox(height: size.height * 0.02);
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookingItemDetailWidget(
                                                      booking: snapshot
                                                          .data!.data[index])));
                                    },
                                    child: bookingItemWidget(
                                        context, snapshot.data!.data[index]));
                              },
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                        future: checkList,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
