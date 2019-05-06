import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 70),
              child: Image(
                image: AssetImage('assets/A.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBE3)),
                    ),
                    hintText: 'Michael',
                    labelText: 'NAME',
                    labelStyle: TextStyle(
                      color: Color(0xff9A9EB7),
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBE3)),
                    ),
                    hintText: 'michael@atomui.com',
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      color: Color(0xff9A9EB7),
                      fontSize: 12.0,
                    )),keyboardType: TextInputType.emailAddress
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBE3)),
                    ),
                    hintText: '*******',
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      color: Color(0xff9A9EB7),
                      fontSize: 12.0,
                    )),keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 81.0, left: 30.0, right: 30.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 54.0,
                      width: 315.0,
                      decoration: BoxDecoration(
                          color: Color(0xff594CA9),
                          borderRadius: BorderRadius.circular(100.0)),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 95.0, right: 0,top: 120),
                child: Column(
                  children: <Widget>[
                   Text('Already have an account?')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0, left: 5),
                child: Column(
                  children: <Widget>[Text('Log In.',style: TextStyle(
                    color: Color(0xff594CA9)
                  ),)],
                ),
              )
            ],
          ),
          ],
        ),
      ),
    );
  }
}
