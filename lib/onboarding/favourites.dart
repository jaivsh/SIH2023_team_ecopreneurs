import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/dashboard.dart';
import 'package:sih_ecopreneurs/homepage.dart';


class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,child: Icon(Icons.forward, color: Colors.black),onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomepageScreen()));
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashBoardScreen()));
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
                    'Autobiography',
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
