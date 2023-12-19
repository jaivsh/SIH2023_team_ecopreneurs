import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sih_ecopreneurs/listscreen.dart';
import 'package:sih_ecopreneurs/bookshow.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



class SectionScreen extends StatefulWidget {
  final String name;
  const SectionScreen({super.key, required this.name});

  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {

  final TextEditingController _searchController = TextEditingController();
  final List<String> imageUrls = [
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
  ];
  final List<String> name1 = ['All','Books','Journals','E-books','Publication'];
  final List<String> imageUrls1 = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
  ];
  final List<String> aimg2 = ['assets/images/indlead.png',
    'assets/images/flaura.png','assets/images/gandhi.png',
    'assets/images/health.png','assets/images/biography.png'];
  final List<String> aimg1 = ['assets/images/artandculture.png',
  'assets/images/modernindia.png','assets/images/childlit.png',
  'assets/images/mkg.png','assets/images/freedomstr.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),actions: <Widget>[

          IconButton(
            iconSize: 36,
            icon: const Icon(CupertinoIcons.cart, color: Colors.black),
            onPressed: () {

            },
          ),
          IconButton(
            iconSize: 36,
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {

            },
          ),
          PopupMenuButton<String>(
            onSelected: (s) {},
            itemBuilder: (BuildContext context) {
              return {'About Us', 'Agents', 'Online ERS', 'Authors', 'Advertisers', 'Your Purchaces', 'Help and Support'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ], ),
        body: Container( width: MediaQuery.of(context).size.width,padding: EdgeInsets.all(15),color:Color(0xfffeebdc),child:Column(
            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children:[
          SizedBox(height:20),
          Text(
            widget.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              // Add padding around the search bar
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Use a Material design search bar
              child: TextField(
                autofocus: false,
                controller: _searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search books or publications',
                  // Add a clear button to the search bar
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),


          Container(
            height: 100.0, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {

                      // Handle the click event for the image at index
                      print('Image clicked: $index');
                    },
                    child: GestureDetector(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListScreen(category:name1[index],subcategory:widget.name)));
                    },child:CircleAvatar(
                      radius: 40.0, // Adjust the radius as needed
                      child: Text(name1[index],textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
                      backgroundImage: NetworkImage(imageUrls[index]),
                    ),)
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.black, // You can customize the color
            thickness: 1, // You can customize the thickness
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Books',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  // Handle button press
                },
              ),
            ],
          ),

          Container(
            height: 100.0, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Handle the click event for the image at index
                      print('Image clicked: $index');
                    },
                    child: Container(
                      width: 80.0, // Adjust the width as needed
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed

                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Journals',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.forward_rounded),
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ],
            ),
          SizedBox(height:10),
          Container(
            height: 100.0, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Handle the click event for the image at index
                      print('Image clicked: $index');
                    },
                    child: Container(
                      width: 80.0, // Adjust the width as needed
                      height: 80.0, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed

                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height:10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add your action when the button is pressed
                print('Button pressed');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust the vertical padding
                minimumSize: Size(double.infinity, 0), // Full width
              ),
              child: Text(
                'See Creator\'s Collection',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        ]
        ) )
    );
  }
}

