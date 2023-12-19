import 'package:flutter/material.dart';

class CreatorScreen extends StatefulWidget {
  const CreatorScreen({super.key});

  @override
  State<CreatorScreen> createState() => _CreatorScreenState();
}

class _CreatorScreenState extends State<CreatorScreen> {
  int _currentIndex = 0;
  final List<String> _pages = [
    'Art and Culture',
    'Builders of Modern India',
    "Children's Literature",
    'Collected Works of Mahatma Gandhi',

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(

            backgroundColor:Color(0xfffeebdc),
          foregroundColor:Colors.black,
          title: Text('Rohit Sharma'),
          bottom: TabBar(
            labelColor: Colors.red, // Change the selected tab text color
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: 'Art &\nCulture'),
              Tab(text: 'Builders\nof Modern\nIndia'),
              Tab(text: "Children's\nLiterature"),
              Tab(text: 'Works of\nMahatma\nGandhi'),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(padding:EdgeInsets.all(15),color: Color(0xfffeebdc),child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                height: 130,
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
            ]) ),
            Center(child: Text('Builders of Modern India Content')),
            Center(child: Text("Children's Literature Content")),
            Center(child: Text('Collected Works of Mahatma Gandhi Content')),
            Center(child: Text('Cultural Leaders of India Content')),
          ],
        ),
      ),
    );
  }
}
