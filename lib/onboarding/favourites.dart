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

  void submitstuff() async {
      UserPersona persona = UserPersona(
        widget.data[0],
        widget.data[1],
        '18-25 years',
        'Roller coster',
        'history'
      );

      PersonaController controller = PersonaController((String response) {
        print(response);

      });

      controller.submitForm(persona);
  }

  @override
  initState() {
   submitstuff();
  }

  List<String> interests = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,child: Icon(Icons.forward, color: Colors.black),onPressed: () async {
        List<String> k = widget.data;
        k= k + interests;
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomepageScreen()));
      }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
          //yha par bhejo
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DashBoardScreen()));
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

            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Immersive()));
          },child:GestureDetector(onTap: () {
            interests.add('History');
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
            interests = interests + ['Autobiography'];
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
            interests = interests + ['Photography'];

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
            interests = interests + ['Sports'];

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
            interests = interests + ['Novel'];

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
            interests = interests + ['Language and Literature'];
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
            interests = interests + ['Art and Culture'];

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
            interests = interests + ['Architecture'];

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
