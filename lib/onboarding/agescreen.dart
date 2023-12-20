import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/onboarding/streamscreen.dart';

class AgeScreen extends StatefulWidget {
  final List<String> data;
  const AgeScreen({super.key, required this.data});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  bool cb1 = false;
  bool cb2 = false;
  bool cb3 = false;
  bool cb4 = false;
  bool cb5 = false;
  String actval = '';
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
                'Age',
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
                'Please select your age',
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
                            List<String> k = widget.data;
                            k = k + [actval];
                            setState(() {
                              cb1 = s!;
                            });
                            if(cb1) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => StreamScreen(data: k)),
                              );
                            }
                            actval = 'Below 18';
                          }),
                          SizedBox(width:20),
                          Text(
                            'Below 18 years',
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
                            List<String> k = widget.data;
                            k = k + [actval];
                            setState(() {
                              cb2= s!;
                            });
                            if(cb2) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => StreamScreen(data: k)),
                              );
                            }
                            actval = '18-25';

                          }),
                          SizedBox(width:20),
                          Text(
                            '18 - 25 years',
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
                            List<String> k = widget.data;
                            k = k + [actval];
                            setState(() {
                              cb3 = s!;
                            });
                            if(cb3) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => StreamScreen(data: k)),
                              );
                            }
                            actval = '25-40';

                          }),
                          SizedBox(width:20),
                          Text(
                            '25 - 40 years',
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
                            List<String> k = widget.data;
                            k = k + [actval];
                            setState(() {
                              cb4 = s!;
                            });
                            if(cb4) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => StreamScreen(data: k)),
                              );
                            }
                            actval = '40-55';

                          }),
                          SizedBox(width:20),
                          Text(
                            '40 - 55 years',
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
                            List<String> k = widget.data;
                            k = k + [actval];

                            setState(() {
                              cb5 = s!;
                            });

                            if(cb5) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => StreamScreen(data: k)),
                              );
                            }
                          }),
                          SizedBox(width:20),
                          Text(
                            'Above 55 years',
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
