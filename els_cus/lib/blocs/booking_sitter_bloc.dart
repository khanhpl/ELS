import 'dart:convert';
import 'package:els_cus_mobile/core/models/service_data_model.dart';
import 'package:els_cus_mobile/core/models/sitter_data_model.dart';
import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;
class BookingSitterBloc{

  List<String>getListServiceID(List<ServiceDataModel> listService){
    List<String> listID = [];
    if(listService.isNotEmpty){
      for(ServiceDataModel service in listService){
        listID.add("${service.id.toString()}");
      }
    }
    return listID;
  }
  Future<bool> BookingSitter(int elderID, double totalPrice, List<ServiceDataModel> listService, SitterDataModel sitter) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking/addSitter");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            'address': "string",
            'description': "string",
            'elderId': elderID.toString(),
            'startDateTime': "2022-11-20T08:41:45.020Z",
            'endDateTime': "2022-11-20T08:41:45.020Z",
            'place': "string",
            'totalPrice': totalPrice.toString(),
            'sitterId': sitter.id.toString(),
            'email': Globals.curUser!.data.email,
            "serviceIds": getListServiceID(listService),
          },
        ),
      );
      print('Status code:'+response.statusCode.toString());
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }
}