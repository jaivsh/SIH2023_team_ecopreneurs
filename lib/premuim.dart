import 'package:flutter/material.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc) ),
      body: Container(width: MediaQuery.of(context).size.width,color: Color(0xfffeebdc), padding: EdgeInsets.all(15), child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Premium',
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Plans just for you',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(children: [
            SizedBox(height: 50),
            Flexible(child:Text(
              '5 E-Books, 1 Paperback,and 2 Journals',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),),
            SizedBox(height:50),
            Text(
              '@ ₹999/ month',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),
          ]),
          width: MediaQuery.of(context).size.width,
          height: 128,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.99, 0.12),
              end: Alignment(0.99, -0.12),
              colors: [Color(0xFFE29500), Colors.white],
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
        ),
        SizedBox(height:10),
        Container(
          child: Column(children: [
            SizedBox(height: 50),
            Flexible(child:Text(
              '5 E-Books, 2 Paperback,and 3 Journals',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),),
            SizedBox(height:50),
            Text(
              '@ ₹1,199/ month',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),
          ]),
          width: MediaQuery.of(context).size.width,
          height: 128,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.99, 0.12),
              end: Alignment(0.99, -0.12),
              colors: [Color(0xFFE29500), Colors.white],
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
        ),
        SizedBox(height:10),
        Container(
          child: Column(children: [
            SizedBox(height: 70),
            Flexible(child:Text(
              'Customize your plan',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),),


          ]),
          width: MediaQuery.of(context).size.width,
          height: 128,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.99, 0.12),
              end: Alignment(0.99, -0.12),
              colors: [Color(0xFFE29500), Colors.white],
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
        )
      ])),
    );
  }
}
