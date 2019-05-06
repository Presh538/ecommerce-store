import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool monVal = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50),
            height: 150,
            child: Image(
              image: AssetImage('assets/A.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50),
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
                    )),
                keyboardType: TextInputType.emailAddress),
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
                  )),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 0),
                child: Column(
                  children: <Widget>[
                    Checkbox(
                      value: monVal,
                      onChanged: (bool value) {
                        setState(() {
                          monVal = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 0),
                child: Column(
                  children: <Widget>[Text('Remember Me')],
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 35.0, left: 30.0, right: 30.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 54.0,
                      width: 315.0,
                      decoration: BoxDecoration(
                          color: Color(0xff594CA9),
                          borderRadius: BorderRadius.circular(100.0)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'LOG IN',
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
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 54.0,
                    width: 315.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border:
                            Border.all(color: Color(0xff594CA9), width: 2.0)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'LOG IN WITH FACEBOOK',
                        style: TextStyle(
                            color: Color(0xff594CA9),
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
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'Forgot password?',
              style: TextStyle(color: Color(0xff594CA9)),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 95.0, right: 0, top: 40),
                child: Column(
                  children: <Widget>[Text('Don\'t have an account?')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 5),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Sign Up.',
                      style: TextStyle(color: Color(0xff594CA9)),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
