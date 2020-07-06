import 'package:flutter/material.dart';
import 'package:newsapp/feed.screen.dart';
import 'package:newsapp/forget.screen.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              obscureText: true,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ForgetScreen.routeName);
              },
              child: Text(
                'Forget?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(FeedScreen.routeName);
                  },
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'SIGN IN',
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
