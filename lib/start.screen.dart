import 'package:flutter/material.dart';
import 'package:newsapp/signin.screen.dart';
import 'package:newsapp/signup.screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipRRect(
            child: Image.network(
              'https://images.unsplash.com/photo-1589430574334-4b50cf9bd5fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjQ3MzMyfQ&auto=format&fit=crop&w=1900&q=80',
              height: 800,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello, I am \nSeger Brntsen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    fontFamily: "josefinSans",
                    letterSpacing: 0.02,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'They should be encouraged, praised, and\nif possible give red wine and chocolates.',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      letterSpacing: 0.02,
                      fontWeight: FontWeight.w500,
                      fontFamily: "josefinSans",
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 320, 0, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 60,
                width: 170,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignupScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsets.fromLTRB(20, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "josefinSans",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(SignupScreen.routeName);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 40),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    letterSpacing: 0.02,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontFamily: "josefinSans",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 40),
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SigninScreen.routeName);
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontFamily: "josefinSans",
                      letterSpacing: 0.02,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
