import 'package:flutter/material.dart';
import 'package:newsapp/signin.dart';
import 'package:newsapp/start.screen.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 45, 0, 0),
            alignment: Alignment.topLeft,
            child: FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pop(StartScreen());
              },
              padding: EdgeInsets.fromLTRB(5, 5, 12, 5),
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 30,
                color: Colors.white,
              ),
              label: Text(
                'BACK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "josefinSans",
                ),
              ),
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "josefinSans",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 18, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter your credential to continue',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontFamily: "josefinSans",
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
            child: Row(
              children: <Widget>[
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      child: Image.asset(
                        'assets/images/iphone.png',
                        height: 35,
                        width: 35,
                        fit: BoxFit.cover,
                      ),
                      radius: 35,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      child: Image.asset(
                        'assets/images/facebook.png',
                        height: 35,
                        width: 35,
                        fit: BoxFit.cover,
                      ),
                      radius: 35,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      child: Image.asset(
                        'assets/images/googlepay.png',
                        height: 35,
                        width: 35,
                        fit: BoxFit.cover,
                      ),
                      radius: 35,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Signin(),
          ),
        ],
      ),
    ));
  }
}
