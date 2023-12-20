import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sih_ecopreneurs/payaddress.dart';



class BookShow extends StatefulWidget {
  final String name;
  final String price;
  final String crossprice;
  const BookShow({super.key, required this.name, required this.price, required this.crossprice});

  @override
  State<BookShow> createState() => _BookShowState();
}

class _BookShowState extends State<BookShow> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),),body: Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size. width, child: Column(
      children: [
        CarouselSlider(
          options:CarouselOptions(
            height: MediaQuery.of(context).size.height/2.5,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: true,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            enlargeFactor: 0.3,

            scrollDirection: Axis.horizontal,
          ),
          items: ['assets/images/buk.png'].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(0))
                    ),
                    child: Image.asset('$i'),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height:5),
        Container(padding: EdgeInsets.all(20),width: MediaQuery.of(context).size.width, color: Colors.white, height:290, child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children:[
          SizedBox(height:10),
          Text(
            widget.name.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
              height: 0.04,
            ),
          ),
          SizedBox(height:20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: widget.crossprice,
                  style: TextStyle(
                    color: Color(0xFF474747),
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey, // Customize the strikethrough color if needed
                    decorationThickness: 2.0,
                    fontSize: 32,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Quantity: ${counter+1}', textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w800,
                  height: 0.06,
                ),),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: decrementCounter,
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: incrementCounter,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Ratings & Reviews',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Row with Stars
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.orange,
                    ),
                    SizedBox(width:80),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red)
                      ,onPressed: () {
                        // Handle Give Review button press
                        print('Give Review pressed');
                      },
                      child: Text('Give Review'),
                    ),
                  ],
                ),

                SizedBox(height: 0.0), // Add some space between stars and text

                // Column with Review Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4.5 out of 5 stars',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rating: Very Good',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ])),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              height:60,
              child: ElevatedButton(
    style: ElevatedButton.styleFrom(elevation:100,backgroundColor: Color(0xfffeebdc),),
    onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PayAddress()));

                  print('Buy Now pressed');
                },
                child: Text(
                  'Buy Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w600,
                    height: 0.05,
                  ),
                ),
              ),
            ),
             // Add some space between buttons
            SizedBox(
              height:60,
              width: MediaQuery.of(context).size.width/2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation:100,backgroundColor: Colors.red)
                ,onPressed: () {
                  // Handle Add to Cart button press
                  print('Add to Cart pressed');
                },
                child: Text(
                  'Add to Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'SF UI Display',
                    fontWeight: FontWeight.w600,
                    height: 0.05,
                  ),
                ),
              ),
            ),

          ],
        ),

      ]
    )));
  }
}
