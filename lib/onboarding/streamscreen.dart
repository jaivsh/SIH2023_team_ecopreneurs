import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/homepage.dart';

class StreamScreen extends StatefulWidget {
  const StreamScreen({super.key});

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  bool cb1 = false;
  bool cb2 = false;
  bool cb3 = false;
  bool cb4 = false;
  void _showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter your stream below:'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Stream Name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel', style:TextStyle(color: Colors.red)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {

                // Handle the data from the text field
                // For example, you can print the entered text
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomepageScreen()),
                );// Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Container(color: Color(0xfffeebdc),
        width: MediaQuery.of(context).size.width,
        padding:EdgeInsets.all(20),
        child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Stream',
                style: TextStyle(
                  color: Color(0xFFFF1E00),
                  fontSize: 36,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w600,
                  height: 0.03,
                ),
              ),
              SizedBox(height:20),
              Text(
                'Please select your career stream',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(height:30),
              Container(

                  height: 258,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children:[
                          SizedBox(width:20), Checkbox(activeColor: Colors.red,value:cb1,onChanged:(s) {
                            setState(() {
                              cb1 = s!;
                            });
                          }),
                          SizedBox(width:20),
                          Text(
                            'Education',
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ]),

                        Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children:[
                          SizedBox(width:20), Checkbox(activeColor: Colors.red,value:cb1,onChanged:(s) {
                            setState(() {
                              cb1 = s!;
                            });
                          }),
                          SizedBox(width:20),
                          Text(
                            'Healthcare',
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children:[
                          SizedBox(width:20), Checkbox(activeColor: Colors.red,value:cb1,onChanged:(s) {
                            setState(() {
                              cb1 = s!;
                            });
                          }),
                          SizedBox(width:20),
                          Text(
                            'Industry',
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children:[
                          SizedBox(width:20), Checkbox(activeColor: Colors.red,value:cb1,onChanged:(s) {
                            setState(() {
                              cb1 = s!;
                            });
                          }),
                          SizedBox(width:20),
                          Text(
                            'Financing and Accounting',
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children:[
                          SizedBox(width:20), Checkbox(activeColor: Colors.red,value:cb1,onChanged:(s) {
                            _showInputDialog(context);
                          }),
                          SizedBox(width:20),
                          Text(
                            'Others',
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ])
                      ])
              )
            ]))));
  }
}
