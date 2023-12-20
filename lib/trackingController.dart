import 'dart:convert' as convert;
import 'package:sih_ecopreneurs/persona2.dart';
import 'package:http/http.dart' as http;


class TrackingController {
  // Callback function to give response of status of current request.
  final void Function(String) callback;

  // Google App Script Web URL
  static const String URL = "https://script.google.com/macros/s/AKfycbwasjK0s-y2guZ_Dh7j4IbQoPCkB9Hyf45BiKkbRipxGHtlSCcdFJF0ZSS1b_BIiiBbGg/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  TrackingController(this.callback);

  void submitForm(TrackingPersona trackingPersona) async{
    try{
      await http.get(Uri.parse(URL + trackingPersona.toParams())).then(
              (response){
            callback(convert.jsonDecode(response.body)['status']);
          });
    } catch(e){
      print(e);
    }
  }
}