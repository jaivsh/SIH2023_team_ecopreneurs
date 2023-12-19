import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/paymentscreen.dart';


class PayAddress extends StatefulWidget {
  const PayAddress({super.key});

  @override
  State<PayAddress> createState() => _PayAddressState();
}

class _PayAddressState extends State<PayAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Rohit Sharma'),elevation: 0,foregroundColor:Colors.black, backgroundColor:Color(0xfffeebdc),),
    body: Container(color: Color(0xfffeebdc),width: MediaQuery.of(context).size.width,padding: EdgeInsets.all(15), child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children:[
      Text(
        'Add address',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'SF UI Display',
          fontWeight: FontWeight.w600,
          height: 0.05,
        ),
      ),
      SizedBox(height: 15),
      Container(
        padding: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height:20),
          Text(
            'Contact details',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
              height: 0.06,
            ),
          ),
          SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.only(top:5, left:1, right:1),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buyer\'s Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5, left:1, right:1),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Mobile No.',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ]),
        height: 190,
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
      SizedBox(height:5),
      Container(
        padding: EdgeInsets.only(top:30, left:15),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
          Text(
            'Address',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
              height: 0.06,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10, left:1, right:15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Address(Building, Street, Area)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10, left:1, right:15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pincode',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10, left:1, right:15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Town/Village/City',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10, left:1, right:15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'State',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children:[
            Text(
              'Save address as',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w600,
                height: 0.06,
              ),
            ),
            TextButton(onPressed: () {},child:Text('Home', style: TextStyle(
              color: Color(0xFFFF1E00),
              fontSize: 14,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w400,
              height: 0.07,
            ),)),
            TextButton(onPressed: () {},child:Text('Work', style: TextStyle(
              color: Color(0xFFFF1E00),
              fontSize: 14,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w400,
              height: 0.07,
            ),))
          ]),


        ]),
        width: MediaQuery.of(context).size.width,
        height: 370,
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
      SizedBox(height: 5),
      Container(child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed:() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaySuccess()));

      }, child: Text('Proceed to Payment')),width:MediaQuery.of(context).size.width, height:60)
    ])));
  }
}
