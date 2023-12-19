import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/en/weekly.dart';
import 'package:sih_ecopreneurs/en/premiumshow.dart';


class JobPostEN extends StatefulWidget {
  final String title;
  const JobPostEN({super.key, required this.title});

  @override
  State<JobPostEN> createState() => _JobPostENState();
}

class _JobPostENState extends State<JobPostEN> {
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
    body: Container(padding: EdgeInsets.all(15),width: MediaQuery.of(context).size.width, color: Color(0xfffeebdc),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
      Container(

        width: MediaQuery.of(context).size.width,
        height: 145,
        child: Column(children:[
          SizedBox(height:25),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
              height: 0.05,
            ),
          ),
          Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 110),
            Text(
              '20 Oct 2023',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Row(
              children: [
                LikeButton(),
                SizedBox(width: 5), // Add some space between the buttons
                ShareButton(),
              ],
            ),
          ],
        ),
        ]),
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: NetworkImage("https://via.placeholder.com/327x195"),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7),
            ),
          ),
        ),
      ),
      SizedBox(height:10),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 370,
        child: Column(children: []),
        decoration: ShapeDecoration(
          color: Colors.white,
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
      SizedBox(height: 10),
      GestureDetector(onTap: () {_showCustomAlert(context);},child:
      Container(
        child:Container(
          padding: EdgeInsets.only(top:20, left:10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 22,
            child: Text(
              'Message the recruiter',
              style: TextStyle(
                color: Color(0xFF565656),
                fontSize: 12,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal:15, vertical:5),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: ShapeDecoration(
          color: Colors.white,
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
      )),
      SizedBox(height:5),
      Container(
        child: Center(child:Text(
          'Apply',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'SF UI Display',
            fontWeight: FontWeight.w400,
            height: 0.08,
          ),
        ),),
        width: MediaQuery.of(context).size.width,
        height: 36,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFFF5A43), Color(0xFFFF1E00)],
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
      )
    ] )));
  }
  Future<void> _showCustomAlert(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Join Premium'),
          content: GestureDetector(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PremiumEN()));
          },child:Container(
            child: Column(children: [
              SizedBox(height:30),
              Text(
                'Join Premium',
                style: TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 20,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
              SizedBox(height:20),
              Text('message the recruiter directly', style: TextStyle(
                color: Color(0xFF111111),
                fontSize: 16,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),),
              SizedBox(height:10),
              Icon(Icons.stars, color: Colors.teal)
            ]),
            width: MediaQuery.of(context).size.width,
            height: 93,

            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1, 0.08),
                end: Alignment(1.00, -0.08),
                colors: [Color(0xFFE29500), Color(0xFFEADABB)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert
              },
              child: Text('Cancel', style: TextStyle(color: Colors.red)),
            ),

          ],
        );
      },
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

