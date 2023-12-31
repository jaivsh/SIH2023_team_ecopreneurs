import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gsheets/gsheets.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //final gsheets = GSheets(credentials);
  //final ss =  await gsheets.spreadsheet(spreadsheetid);
  //var sheet = ss.workSheetByTitle('Sheet1');
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MyApp()));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  void initState() {
    super.initState();

    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(color: Color(0xfffeebdc),
          child: Center(child: Image.asset('assets/images/Notebook.png')),
      ),));
  }
}
