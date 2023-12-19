import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sih_ecopreneurs/bookshow.dart';

class ListScreen extends StatefulWidget {
  final String category;
  final String subcategory;
  const ListScreen({super.key, required this.category, required this.subcategory});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool showSearchBar = false;
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.category} : ${widget.subcategory}'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),actions: <Widget>[

        IconButton(
          iconSize: 36,
          icon: const Icon(CupertinoIcons.cart, color: Colors.black),
          onPressed: () {

          },
        ),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: showSearchBar
              ? Container(
            key: ValueKey<int>(1),
            width: 200,
            child: TextField(
              controller: _searchController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          )
              : IconButton(
            key: ValueKey<int>(2),
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                showSearchBar = true;
              });
            },
          ),
        ),

      ], ),
      body: ListView.builder(
        itemCount: 5, // Adjust the number of cards as needed
        itemBuilder: (context, index) {
          return ProductCard();
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookShow(name: 'product title', price: '1700')));
    },child:Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Container(
            height: 200.0, // Adjust the height of the image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Notebook.png'), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price: \$50.00', // Replace with the actual price
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle add to cart button press
                        print('Add to Cart pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: Text('Add to Cart'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),)
    );
  }
}
