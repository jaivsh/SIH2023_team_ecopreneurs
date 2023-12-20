import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/onboarding/languagescreen.dart';
import 'package:sih_ecopreneurs/auth/phonescreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Center(child: Column(children:[Image.asset('assets/images/Notebook.png'),
          SizedBox(height:10),
          Image.asset('assets/images/branding_text.png')])),
        Padding(padding:EdgeInsets.only(top:100, left:50, right:50),child: Container(width: MediaQuery.of(context).size.width,child:ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(40), // <-- Radius
    ),backgroundColor: Colors.black),onPressed:() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneScreen()));

        }, child: Text('SignUp', style:TextStyle(color:Colors.red))))),
        SizedBox(height:17),


        SizedBox(

          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Existing User?  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.75,
                  ),
                ),


              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Center(child:TextButton(onPressed:() {},child: Text('Login',style:TextStyle(
          color: Color(0xFFFF1E00),
          fontSize: 15,
          fontFamily: 'SF UI Display',
          fontWeight: FontWeight.w600,
          height: 0,
          letterSpacing: 0.75,
        ))))
      ]

    )));
  }
}

