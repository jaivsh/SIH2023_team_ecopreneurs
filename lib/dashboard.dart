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
  List<String> name1 = ['Art & Culture', 'Modern India', 'Children\'s Literature', 'Works of M.K. Gandhi', 'Freedom Struggle'];
  List<String> name2 = ['Indian Leaders','Flora & Fauna', 'Gandhian Literature', 'Health & Nutrition', 'Biography'];
  final List<String> imageUrls1 = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
  ];

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
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(child:Text('$i', style: TextStyle(fontSize: 16.0),))
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
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SectionScreen(name: name1[index])));

      },child:CircleAvatar(
        radius: 40.0, // Adjust the radius as needed
        backgroundImage: NetworkImage(imageUrls[index]),
        child: Text(name1[index],textAlign: TextAlign.center, style: TextStyle(color: Colors.black))
      ),)

    ])
    ),
    );
    },
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
                  child: CircleAvatar(
                    radius: 40.0, // Adjust the radius as needed
                    backgroundImage: NetworkImage(imageUrls[index]),
                    child: Text(name2[index],textAlign: TextAlign.center, style: TextStyle(color: Colors.black))
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height:15),
        Text(
          'Top Bestsellers',
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
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        image: DecorationImage(
                          image: NetworkImage(imageUrls[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
      ]
      ) )
    );
  }
}
