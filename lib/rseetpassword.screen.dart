import 'package:flutter/material.dart';
import 'package:newsapp/pincode.screen.dart';
import 'package:newsapp/signin.screen.dart';
import 'package:newsapp/start.screen.dart';

class ResetpasswordScreen extends StatelessWidget {
  static const routeName = '/resetpassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'Enter 4-digit code',
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
                  'The recovery code was sent to your\ne-mail. Please enter the code below:',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontFamily: "josefinSans",
                  ),
                ),
              ),
              Container(
                child: PincodeScreen(),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(SigninScreen.routeName);
                        },
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'CONTINUE',
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
                      margin: EdgeInsets.fromLTRB(20, 35, 20, 15),
                    ),
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
