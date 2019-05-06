import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          shoesCard('assets/1.png'),
          shoesCard('assets/2.png'),
          shoesCard('assets/3.png'),
          shoesCard('assets/4.png'),
          shoesCard('assets/5.png'),
          ],
        
      ),
    );
  }
}

Widget shoesCard(String imgPath) {
  return Padding(
    padding: EdgeInsets.only(left: 3.5, right: 3.5, top: 8, bottom: 15),
    child: Container(
      width: 120.0,
      
      decoration: BoxDecoration(
          color: Color(0xffF5F5F6),
          image:
              DecorationImage(image: AssetImage(imgPath), fit: BoxFit.contain)),
    ),
  );
}
