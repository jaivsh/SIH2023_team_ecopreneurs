import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/dashboard.dart';
import 'package:sih_ecopreneurs/homepage.dart';
import 'package:sih_ecopreneurs/persona1.dart';
import 'package:sih_ecopreneurs/personaController.dart';
import 'package:gsheets/gsheets.dart';


/// Your spreadsheet id
///
/// It can be found in the link to your spreadsheet -
/// link looks like so https://docs.google.com/spreadsheets/d/YOUR_SPREADSHEET_ID/edit#gid=0
/// [YOUR_SPREADSHEET_ID] in the path is the id your need


class FavouriteScreen extends StatefulWidget {
  final List<String> data;
  const FavouriteScreen({super.key, required this.data});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  void submitstuff(List<String> k) async {
      UserPersona persona = UserPersona(
        k[0],
        k[1],
        k[4],
        k[2],
        k[3],

      );

      PersonaController controller = PersonaController((String response) {
        print(response);

      });

      controller.submitForm(persona);
  }

  @override
  initState() {

  }

  String interests = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(padding:EdgeInsets.all(15),color: Color(0xfffeebdc), width: MediaQuery.of(context).size.width,
      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children:[
        SizedBox(height: 30),
        TextButton(child: Text('Skip >',style: TextStyle(
            color: Color(0xFF464646),
          fontSize: 15,
          fontFamily: 'SF UI Display',
          fontWeight: FontWeight.w600,
          height: 0.08,
          letterSpacing: 0.75,
        ),), onPressed: () {

          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DashBoardScreen()));
        }),
        SizedBox(height: 30),
        Text(
          'Choose your interests',
          style: TextStyle(
            color: Color(0xFFFF1E00),
            fontSize: 32,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w600,
            height: 0.04,
            letterSpacing: 1.60,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Choose the topics that interests you for a better app experience',
          style: TextStyle(
            color: Color(0xFF111111),
            fontSize: 15,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w600,
            height: 0,
            letterSpacing: 0.75,
          ),
        ),
        SizedBox(height:15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{

          },child:GestureDetector(onTap: () {
            interests= 'History';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'History',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Autobiography';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Interactive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Autobiography',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),)
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{
            interests= 'Photography';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));

            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Photography',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Sports';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));

            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Interactive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sports',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{
            interests= 'Novel';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));

            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Novel',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Language and Literature';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Interactive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Language and Literature',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{
            interests= 'Art and Culture';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));

            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Art and Culture',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Architecture';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Interactive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Architecture',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{
            interests= 'Childern\'s Literature';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Children\'s Literature',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Media and Communication';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Media and Communication',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{
            interests= 'Health and Nutrition';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Health and Nutrition',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Science';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Science',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),

        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{

            interests= 'Speeches';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Speeches',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {
            interests= 'Mahatma Gandhi';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mahatma Gandhi',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),

        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [

          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () async{
            interests= 'Ecofriendly';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ecofriendly',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),))))),
          Flexible(child:Container(height: 50,child:GestureDetector(onTap: () {

            interests= 'Wildlife';
            List<String> k = widget.data;
            k = k + [interests];
            submitstuff(k);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));// Navigator.of(context).push(MaterialPageRoute(builder: (context) => Interactive()));
          },child:Card(
              elevation:7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Wildlife',
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),)))),),

        ],),

      ]))
    );
  }
}
