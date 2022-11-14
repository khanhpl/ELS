// import 'package:els_cus_mobile/core/models/category_data_model.dart';
// import 'package:flutter/material.dart';
//
// import '../../blocs/service_blocs.dart';
// import '../../core/models/service_model.dart';
// import '../../core/utils/color_constant.dart';
// import '../../core/utils/image_constant.dart';
// import 'package:els_cus_mobile/widgets/service_item_by_category.dart';
//
// class CategoryScreen extends StatefulWidget {
//   const CategoryScreen({super.key});
//
//
//   @override
//   State<CategoryScreen> createState() => _CategoryScreenState();
// }
//
// class _CategoryScreenState extends State<CategoryScreen> {
//   late CategoryDataModel category;
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     final Future<ServiceModel> serviceList =
//         ServiceBlocs().getServiceByCate(category.id);
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: size.height * 0.08,
//           // bottomOpacity: 0.0,
//           elevation: 0.0,
//           automaticallyImplyLeading: false,
//           backgroundColor: ColorConstant.purple900,
//           leading: GestureDetector(
//             onTap: (){
//               Navigator.pushNamed(context, '/accountScreen');
//             },
//             child: Image.asset(
//               ImageConstant.imgArrowleft,
//               height: size.height * 0.024,
//               width: size.width * 0.03,
//               color: ColorConstant.whiteA700,
//             ),
//           ),
//           title: Container(
//             decoration: BoxDecoration(
//               color: ColorConstant.purple900,
//             ),
//             child: Container(
//               margin: EdgeInsets.only(
//                 top: size.height * 0.01,
//                 bottom: size.height * 0.01,
//               ),
//               child: Text(
//                 category.name,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: ColorConstant.whiteA700,
//                   fontSize: 34,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w700,
//                   height: 1.00,
//                 ),
//               ),
//             ),
//           ),
//
//         ),
//         floatingActionButton: FloatingActionButton(
//
//           onPressed: () {
//             Navigator.pushNamed(context, '/addNewElderScreen');
//           },
//           elevation: 0.0,
//           backgroundColor: ColorConstant.purple900,
//           child: const Icon(Icons.add),
//         ),
//         body: Container(
//           color: ColorConstant.whiteA700,
//           child: FutureBuilder<ServiceModel>(
//             builder: (context, snapshot) {
//               if (snapshot.hasError) print(snapshot.error);
//               if (snapshot.hasData) {
//                 return ListView.separated(
//                   physics: const BouncingScrollPhysics(),
//                   shrinkWrap: true,
//                   scrollDirection: Axis.vertical,
//                   // itemCount: snapshot.data!.length,
//                   itemCount: snapshot.data!.data.length,
//                   separatorBuilder: (context, index) {
//                     return SizedBox(height: size.height*0.000001,);
//                   },
//                   itemBuilder: (BuildContext context, int index) {
//                     return ServiceItemByCate(service: snapshot.data!.data[index]);
//                   },
//                 );
//               } else {
//                 return const CircularProgressIndicator();
//               }
//             },
//             future: serviceList,
//           ),
//         ),
//       ),
//     );
//   }
// }
