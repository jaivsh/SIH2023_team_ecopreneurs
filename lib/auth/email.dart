import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/onboarding/languagescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:intl/intl.dart';


class EmailScreen extends StatefulWidget {
  final List<String> data;
  const EmailScreen({super.key, required this.data});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  TextEditingController _emailController = TextEditingController();

  Future<void> _incrementCounter(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('counter', '10');
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('HH:mm:ss').format(now);
    int curtime = DateTime.now().millisecondsSinceEpoch;
    await prefs.setString('email', email);
    await prefs.setString('sessionhash', formattedTime);
    await prefs.setInt('milli', curtime);


  }

  void validateEmailAddress() {
    // Get the input value
    String emailAddress = _emailController.text.trim();

    // Regular expression for a valid email address
    RegExp regex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // Check if the email address matches the pattern
    if (regex.hasMatch(emailAddress)) {
      List<String> k = widget.data;
      k = k + [emailAddress];
      print(k);
      _incrementCounter(emailAddress);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LanguageScreen(data: k)));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Invalid email address'),
            content: Text('Please enter a valid email address.'),
          );
        },
      );
    }
  }

  @override
  initstate() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width, child: Column(children: [
          SizedBox(height:80),
          Text(
            'Email',
            style: TextStyle(
              color: Color(0xFFFF1E00),
              fontSize: 32,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          SizedBox(height:10),
          Text(
            'Please enter your email address',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
         Padding(
            padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Label for the email address
          Text('Email Address:'),

          // Input field for the email address
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: 'example@example.com',
            ),
          ),

          // Button to trigger the validation
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

            onPressed: validateEmailAddress,
            child: Text('Move Ahead'),
          ),
        ],
      ),
    )
        ]))
    );
}}

class EmailAddressForm extends StatefulWidget {
  @override
  _EmailAddressFormState createState() => _EmailAddressFormState();
}

class _EmailAddressFormState extends State<EmailAddressForm> {
  TextEditingController _emailController = TextEditingController();

  void validateEmailAddress() {
    // Get the input value
    String emailAddress = _emailController.text.trim();

    RegExp regex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // Check if the email address matches the pattern
    if (regex.hasMatch(emailAddress)) {} else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Invalid email address'),
            content: Text('Please enter a valid email address.'),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Label for the email address
          Text('Email Address:'),

          // Input field for the email address
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: 'example@example.com',
            ),
          ),

          // Button to trigger the validation
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

            onPressed: validateEmailAddress,
            child: Text('Move Ahead'),
          ),
        ],
      ),
    );
  }
}
