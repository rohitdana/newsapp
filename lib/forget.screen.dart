import 'package:flutter/material.dart';
import 'package:newsapp/forget.dart';
import 'package:newsapp/start.screen.dart';

class ForgetScreen extends StatelessWidget {
  static const routeName = '/forget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 30, 0, 0),
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
                padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "josefinSans",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Text(
                  'Select which contact details should we use to reset your password:',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontFamily: "josefinSans",
                  ),
                ),
              )
            ],
          ),
          Forget(),
        ],
      ),
    ));
  }
}
