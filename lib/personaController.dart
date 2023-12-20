import 'dart:convert' as convert;
import 'package:sih_ecopreneurs/persona1.dart';
import 'package:http/http.dart' as http;


class PersonaController {
  // Callback function to give response of status of current request.
  final void Function(String) callback;

  // Google App Script Web URL
  static const String URL = "https://script.google.com/macros/s/AKfycbz0xXfyjbxCvo1fwQzVt2Z41T1xcCk-srreXHrsXL5PMJjGw_MoWsMQDl6ym4-JMRL1/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  PersonaController(this.callback);

  void submitForm(UserPersona userPersona) async{
    try{
      await http.get(Uri.parse(URL + userPersona.toParams())).then(
              (response){
            callback(convert.jsonDecode(response.body)['status']);
          });
    } catch(e){
      print(e);
    }
  }
}