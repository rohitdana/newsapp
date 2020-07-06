import 'package:flutter/material.dart';
import 'package:newsapp/signup.dart';
import 'package:newsapp/start.screen.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
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
                  fontSize: 20,
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
                padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Let\'s get started!',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    fontFamily: "josefinSans",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 16, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter you information bellow or login\nwith the social account',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: "josefinSans",
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
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
                      radius: 30,
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
                      ),
                      radius: 30,
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
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Signup(),
          ),
        ],
      ),
    ));
  }
}
