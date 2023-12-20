import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/en/weekly.dart';
import 'package:sih_ecopreneurs/en/jobpost.dart';


class JobHighlightsEN extends StatefulWidget {
  const JobHighlightsEN({super.key});

  @override
  State<JobHighlightsEN> createState() => _JobHighlightsENState();
}

class _JobHighlightsENState extends State<JobHighlightsEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: Text('Job Highlights'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),actions: [ PopupMenuButton<String>(
      onSelected: (s) {

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WeeklyEN()));

      },
      itemBuilder: (BuildContext context) {
        return {'EN Weekly'}.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    ),], ),
      body: Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width,child: VerticalScrollViewWithCards(),),

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
              child: GestureDetector(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobPostEN(title: 'Title of stuff')));
              },child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // Set the background image
                    image: DecorationImage(
                      image: AssetImage('assets/images/oknews.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
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
                          color: Colors.white,
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
                          color: Colors.white,
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
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'SF UI Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LikeButton(),
                          SizedBox(width: 16.0), // Add some space between the buttons
                          ShareButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),),
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
        color: isLiked ? Colors.red : Colors.white,
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}

class ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.share),
      onPressed: () {
        // Handle share button press
        print('Share button pressed');
      },
    );
  }
}

