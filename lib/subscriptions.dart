import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  final List<String> imageUrls = [
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
    'https://htmlcolorcodes.com/assets/images/colors/white-color-solid-background-1920x1080.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc) ),
      body: Container(width: MediaQuery.of(context).size.width,color: Color(0xfffeebdc), padding: EdgeInsets.all(15), child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Your Subscriptions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),

        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height:15),
            Text(
              'Yojana: E-Book',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),
            SizedBox(height:35),
            Text(
              '3 Weeks Left',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),
            ),
          ]),
          width: MediaQuery.of(context).size.width,
          height: 78,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.99, 0.12),
              end: Alignment(0.99, -0.12),
              colors: [Color(0xFFFF1E00), Colors.white],
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
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(height:15),
            Text(
              'Mahatma Gandhi: E-Book',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),
            SizedBox(height:35),
            Text(
              '1 Week Left',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),
            ),
          ]),
          width: MediaQuery.of(context).size.width,
          height: 78,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.99, 0.12),
              end: Alignment(0.99, -0.12),
              colors: [Color(0xFFFF1E00), Colors.white],
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
        SizedBox(height:20),
        Text(
          'Your Purchases',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w700,
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
        ),
        SizedBox(height:15),
        Text(
          'Recommendations',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w700,
            height: 0,
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
        ),
      ])),
    );
  }
}


