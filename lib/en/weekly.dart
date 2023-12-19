import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:sih_ecopreneurs/en/jobhighlights.dart';


class WeeklyEN extends StatefulWidget {
  const WeeklyEN({super.key});

  @override
  State<WeeklyEN> createState() => _WeeklyENState();
}

class _WeeklyENState extends State<WeeklyEN> {
  final List<String> _pages = [
    'News',
    'Articles',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),
          title: Text('EN Weekly'),
          actions: [ PopupMenuButton<String>(
            onSelected: (s) {

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobHighlightsEN()));

            },
            itemBuilder: (BuildContext context) {
              return {'Job Highlights'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),],
          bottom: TabBar(
            labelColor: Colors.red, // Change the selected tab text color
            unselectedLabelColor: Colors.black, // Change the unselected tab text color
            indicatorColor: Colors.red,
            tabs: [
              Tab(text: 'News',),
              Tab(text: 'Articles'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width,child: VerticalScrollViewWithCards(),),
            Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width,child: VerticalScrollViewWithCards(),),

          ],
        ),
      ),
    );
  }
}

class VerticalScrollViewWithCards extends StatefulWidget {
  @override
  _VerticalScrollViewWithCardsState createState() =>
      _VerticalScrollViewWithCardsState();
}

class _VerticalScrollViewWithCardsState
    extends State<VerticalScrollViewWithCards> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                autofocus: false,
                controller: _searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search books or publications',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
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
          Divider(height:10),
          // Rest of the card content...
          ...List.generate(
            4,
                (index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: 130.0,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:10),
                      Text(
                        'News',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'SF UI Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height:20),
                      Text(
                        'Title of news is written here',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'SF UI Display',
                          fontWeight: FontWeight.w600,
                          height: 0.05,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '16 Nov 2023 . 10 min read',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'SF UI Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      LikeButton()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : null,
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}
