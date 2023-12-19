import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/en/weekly.dart';

class PremiumEN extends StatefulWidget {
  const PremiumEN({super.key});

  @override
  State<PremiumEN> createState() => _PremiumENState();
}

class _PremiumENState extends State<PremiumEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xfffeebdc),appBar:AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc)),body: Container(width: MediaQuery.of(context).size.width,
      child: Center(child:Container(
        padding: EdgeInsets.all(15),
child: Column(children: [Icon(Icons.stars, color: Colors.teal),Text(
  'Premium',
  style: TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontFamily: 'SF UI Display',
    fontWeight: FontWeight.w700,
    height: 0,
  ),
),SizedBox(height:5),
  Text(
    'Benefits offered',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'SF UI Display',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  ),
SizedBox(height:5),
  Text(
    textAlign: TextAlign.center,
    '- Lorem Ipsum is simply dummy text of the printing\n- Lorem Ipsum is simply dummy text of the printing\n- Lorem Ipsum is simply dummy text of the printing',
    style: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'SF UI Display',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  ),
        SizedBox(height:30),
        Text(
          'Join Premium',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
  SizedBox(height:15),
  Icon(Icons.stars, color: Colors.teal)

]),
    width: MediaQuery.of(context).size.width-30,
    height: 350,
    decoration: ShapeDecoration(

    gradient: LinearGradient(
    begin: Alignment(1.00, -0.08),
    end: Alignment(-1, 0.08),
    colors: [Color(0xFFE29500), Color(0xFFEADABB)],
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
    shadows: [
    BoxShadow(
    color: Color(0x3F000000),
    blurRadius: 10,
    offset: Offset(0, 4),
    spreadRadius: 0,
    )
    ],
    ),
    ),) ),);
  }
}
