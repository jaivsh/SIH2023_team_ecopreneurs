import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/homepage.dart';

class PaySuccessful extends StatefulWidget {
  const PaySuccessful({super.key});

  @override
  State<PaySuccessful> createState() => _PaySuccessfulState();
}
Color themeColor = Colors.black;

class _PaySuccessfulState extends State<PaySuccessful> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/Subtract.png",

              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Text(
              "Thank You!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Payment done Successfully",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              "You will be redirected to the home page shortly\nor click here to return to home page",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(height: screenHeight * 0.06),
            Flexible(
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                ),onPressed:() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
                }, child: Text('Home'))
            ),
          ],
        ),
      ),
    );
  }
}
