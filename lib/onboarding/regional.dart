import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/dashboard.dart';
import 'package:sih_ecopreneurs/onboarding/favourites.dart';
import 'package:sih_ecopreneurs/onboarding/agescreen.dart';



class RegionalScreen extends StatefulWidget {
  const RegionalScreen({super.key});

  @override
  State<RegionalScreen> createState() => _RegionalScreenState();
}

class _RegionalScreenState extends State<RegionalScreen> {
  bool cb1 = false;
  bool cb2 = false;
  bool cb3 = false;
  bool cb4 = false;

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
                'Choose the language you prefer the most',
                style: TextStyle(
                  color: Color(0xFFFF1E00),
                  fontSize: 22,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 1.10,
                ),
              ),
              SizedBox(height:10),
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
                            'ಕನ್ನಡ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 1,
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
                            'తెలుగు',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 1,
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
                            'தமிழ்',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 1,
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
                            'മലയാളം',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children:[
                          SizedBox(width:20), Checkbox(activeColor: Colors.red,value:cb1,onChanged:(s) {
                            setState(() {
                              cb1 = s!;
                            });
                            if(cb1) {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => AgeScreen()));
                            }
                          }),
                          SizedBox(width:20),
                          Text(
                            'ગુજરાતી',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ])
                      ])
              )
            ]))));
  }
}
