import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/auth/email.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width, child: Column(children: [
        SizedBox(height:80),
        Text(
          'Phone Number',
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
          'Please enter your phone number',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        PhoneNumberForm(),
      ]))
    );
  }
}
class PhoneNumberForm extends StatefulWidget {
  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  TextEditingController _phoneNumberController = TextEditingController();

  void validatePhoneNumber() {
    // Get the input value
    String phoneNumber = _phoneNumberController.text.trim();

    // Regular expression for a valid Indian phone number with +91 STD code
    RegExp regex = RegExp(r'^\+91[0-9]{10}$');

    // Check if the phone number matches the pattern
    if (regex.hasMatch(phoneNumber)) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmailScreen()));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Invalid phone number'),
            content: Text('Please enter a valid Indian phone number with +91 STD code.'),
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
          // Label for the phone number
          Text('Phone Number (with +91):'),

          // Input field for the phone number
          TextField(
            controller: _phoneNumberController,
            decoration: InputDecoration(
              hintText: '+91',
            ),
          ),

          // Button to trigger the validation
          ElevatedButton(

            style: ElevatedButton.styleFrom(backgroundColor: Colors.red)
            ,onPressed: validatePhoneNumber,
            child: Text('Validate'),
          ),
        ],
      ),
    );
  }
}