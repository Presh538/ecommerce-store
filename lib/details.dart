import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'login.dart';
import 'horizontal_listview.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    iconSize: 24.0,
                    onPressed: () {},
                  ),
                ),
                Image(
                  image: AssetImage('assets/A.png'),
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('assets/Bitmap-1.png'),
              AssetImage('assets/Bitmap.png'),
              AssetImage('assets/Bitmap-5.png'),
              AssetImage('assets/Bitmap-3.png'),
              AssetImage('assets/Bitmap-4.png'),
            ],
            autoplay: false,
            dotSize: 4.0,
            showIndicator: false,
          ),
        ),
        HorizontalList(),
        Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Column(
                  children: <Widget>[
                    Text(
                      'NIKE AIR ZOOM VOMERO 12',
                      style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    '\$' + '240',
                    style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 30.0),
          child: Container(
            child: Text(
              'Men’s Running Shoe',
              style: TextStyle(color: Color(0xff9A9EB7), fontSize: 16),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.favorite_border),
                  ),
                  alignment: Alignment.bottomLeft,
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'SIZE',
                    style: TextStyle(color: Color(0xff9a9eb7)),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 200.0, top: 10.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff594CA9),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 54.0,
                  width: 315.0,
                  decoration: BoxDecoration(
                    color: Color(0xff594CA9),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'ADD TO BAG',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
