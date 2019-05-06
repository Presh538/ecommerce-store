import 'package:flutter/material.dart';
import 'products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.black,
                    iconSize: 24.0,
                    onPressed: () {},
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      child: Image(
                        image: AssetImage('assets/A.png'),
                      )),
                  IconButton(
                    icon: Icon(Icons.sort),
                    color: Colors.black,
                    iconSize: 24.0,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 5.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              labelStyle: TextStyle(color: Colors.black),
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text('NEWEST',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      )),
                ),
                Tab(
                  child: Text('MEN',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      )),
                ),
                Tab(
                  child: Text('WOMEN',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      )),
                ),
                Tab(
                  child: Text('KIDS',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      )),
                ),
                Tab(
                  child: Text('SPORTS',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      )),
                ),
                Tab(
                  child: Text('ACCESORIES',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      )),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                new ProductsPage(),
                new ProductsPage(),
                new ProductsPage(),
                new ProductsPage(),
                new ProductsPage(),
                new ProductsPage(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.store,
                  color: Color(0xffFF64AA),
                  size: 24.0,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.black,
                size: 24.0,
              ),
              Icon(
                Icons.shopping_basket,
                color: Colors.black,
                size: 25.0,
              ),
              Icon(
                Icons.shop,
                color: Colors.black,
                size: 25.0,
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
