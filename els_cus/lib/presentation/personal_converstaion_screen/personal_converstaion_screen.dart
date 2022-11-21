import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class PersonalConverstaionScreen extends StatefulWidget {
  const PersonalConverstaionScreen({super.key});


  @override
  State<PersonalConverstaionScreen> createState() => _PersonalConverstaionScreenState();
}

class _PersonalConverstaionScreenState extends State<PersonalConverstaionScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: size.height*0.01,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }
}
