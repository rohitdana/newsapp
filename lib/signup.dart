import 'package:flutter/material.dart';
import 'package:newsapp/feed.screen.dart';
import 'package:newsapp/signin.screen.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(25, 20, 45, 0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 20, 45, 0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Full name',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 20, 45, 0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SigninScreen.routeName);
                  },
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "josefinSans",
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55),
                  ),
                  color: Colors.black,
                ),
                margin: EdgeInsets.fromLTRB(20, 40, 20, 15),
              ),
            ],
          )
        ],
      ),
    );
  }
}
