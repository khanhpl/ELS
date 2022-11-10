import 'dart:async';
import 'dart:convert';
import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;

class PaymentBloc {
  Future<bool> cusPayment(int bookingID) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/test/fakePayment/${bookingID}");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
          },
        ),
      );
      print('Response payment Code: ${response.statusCode.toString()} ');
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }
}
