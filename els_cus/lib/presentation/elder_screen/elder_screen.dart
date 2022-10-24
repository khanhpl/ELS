
import 'package:els_cus_mobile/blocs/elder_blocs.dart';
import 'package:els_cus_mobile/core/models/elder_data_model.dart';
import 'package:els_cus_mobile/core/models/elder_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/widgets/elder_item_widget.dart';
import 'package:flutter/material.dart';

class ElderScreen extends StatelessWidget{
  const ElderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final Future<ElderModel> elderList = ElderBlocs().getAllElder();
    // TODO: implement build
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
              "Người thân",
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
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.pushNamed(context, '/addNewElderScreen');
        },
        elevation: 0.0,
        backgroundColor: ColorConstant.purple900,
        child: const Icon(Icons.add),
      ),
      body: Container(
        color: ColorConstant.whiteA700,
        child: FutureBuilder<ElderModel>(
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
                  return Container(
                    height: 1,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray50,
                    ),
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ElderItemWidget(
                      elder: snapshot.data!.data[index]);
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
          future: elderList,
        ),
      ),
    );
  }

}