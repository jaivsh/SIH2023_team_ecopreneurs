import 'dart:convert' as convert;
import 'package:sih_ecopreneurs/persona1.dart';
import 'package:http/http.dart' as http;


class PersonaController {
  // Callback function to give response of status of current request.
  final void Function(String) callback;

  // Google App Script Web URL
  static const String URL = "https://script.google.com/macros/s/AKfycbwEvtigWLscorG6g6L-Vhz_ZHjCadq4IcboN8gHaWA3m2VSyD1oO1Fvawkr4F7WF7POzA/exec";

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