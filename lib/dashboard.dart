import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:sih_ecopreneurs/en/home.dart';
import 'package:sih_ecopreneurs/sectionscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  final TextEditingController _searchController = TextEditingController();
  final List<String> imageUrls = [
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
  ];
  List<String> name1 = ['Art & Culture', 'Modern \nIndia', 'Children\'s\n Literature', 'M.K. Gandhi', 'Freedom Struggle'];
  List<String> name2 = ['Indian\nLeaders','Flora &\nFauna', 'Gandhian\nLiterature', 'Health &\nNutrition', 'Biography'];
  final List<String> carouselimage = ['assets/images/car1.jpg',
  'assets/images/car2.jpg','assets/images/car3.jpg'];

  final List<String> imageUrls1 = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
  ];
  final List<String> aimg2 = ['assets/images/indlead.png',
    'assets/images/envmnt.png','assets/images/gandhi.png',
    'assets/images/health.png','assets/images/biography.png'];
  final List<String> aimg1 = ['assets/images/painting.png',
    'assets/images/modernindia.png','assets/images/childlit.png',
    'assets/images/mkg.png','assets/images/freedomstr.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),actions: <Widget>[
        TextButton(

          child: Text('EN', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red,fontSize: 20)),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeEN()));
          },
        ),
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
        CarouselSlider(
          options:CarouselOptions(
          height: 120,
          aspectRatio: 16/12,
          viewportFraction: 0.6,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,

          scrollDirection: Axis.horizontal,
        ),
          items: carouselimage.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('$i'), // Replace with your actual image asset path
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Text('')
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height:15),
        Text(
          'Hey, what’s on your mind?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        SizedBox(height:10),
    Container(
    height: 140.0, // Adjust the height as needed
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
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SectionScreen(name: name1[index])));

      },child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('${aimg1[index]}'), // Replace with your image asset path
            ),
            SizedBox(height: 2), // Adjust spacing between CircleAvatar and text
            Text(
              '${name1[index]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),)

    ])
    ),
    );
    },
    ),
    ),
        SizedBox(height:30),
        Container(
          height: 150.0, // Adjust the height as needed
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('${aimg2[index]}'), // Replace with your image asset path
                        ),
                        SizedBox(height: 2), // Adjust spacing between CircleAvatar and text
                        Text(
                          '${name2[index]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              );
            },
          ),
        ),

      ]
      ) )
    );
  }
}
