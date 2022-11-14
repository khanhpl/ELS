
import 'package:els_cus_mobile/blocs/booking_bloc.dart';
import 'package:els_cus_mobile/core/models/booking_data_model.dart';
import 'package:els_cus_mobile/core/models/booking_info_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/widgets/booking_item_detail_widget.dart';
import 'package:els_cus_mobile/widgets/booking_item_widget.dart';
import 'package:els_cus_mobile/widgets/elder_detail_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InprogressWidget extends StatefulWidget {
  const InprogressWidget({super.key});
  @override
  State<InprogressWidget> createState() => _InprogressWidgetState();
}

class _InprogressWidgetState extends State<InprogressWidget> {
  final Future<BookingInfoModel> bookingList = BookingBloc().getBookingByStatusName('STARTING');
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
                            if(snapshot.data!.data.length == 0){
                              return Container(
                                height: size.height*0.5,
                                alignment: Alignment.center,
                                child: Text(
                                  "Chưa có lịch đang diễn ra",
                                  textAlign: TextAlign.center,
                                ),
                              );
                            } else {
                              return ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                // itemCount: snapshot.data!.length,
                                itemCount: snapshot.data!.data.length,
                                separatorBuilder: (context, index) {
                                  return Container(
                                    height: 1,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray50,
                                    ),
                                  );
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                      onTap: () {
                                        // Navigator.push(context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             BookingItemDetailWidget(
                                        //                 booking: snapshot.data!
                                        //                     .data[index])));
                                      },
                                      child: bookingItemWidget(
                                          context, snapshot.data!.data[index]));
                                },
                              );
                            }
                          } else {
                            return CircularProgressIndicator();
                          }
                        },
                        future: bookingList,
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
    );
  }
}
