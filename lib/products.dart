import 'package:flutter/material.dart';
import 'details.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: productsCard('assets/Bitmap.png', '220')),
                productsCard('assets/Bitmap-2.png', '225'),
                productsCard('assets/Bitmap-4.png', '160'),
                productsCard('assets/Bitmap-6.png', '240'),
                productsCard('assets/Bitmap-1.png', '200')
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(onTap: (){
                  Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DetailsPage()));
                },
                child: productsCard('assets/Bitmap-1.png', '240')),
                productsCard('assets/Bitmap-3.png', '250'),
                productsCard('assets/Bitmap-5.png', '290'),
                productsCard('assets/Bitmap-7.png', '260'),
                productsCard('assets/Bitmap.png', '200')
              ],
            )
          ],
        )
      ],
    );
  }

  Widget productsCard(String imgPath, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: Container(
        height: 160.0,
        // width: (MediaQuery.of(context).size.width / 2) - 20.0,
        width: 160.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text('\$' + price,style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
