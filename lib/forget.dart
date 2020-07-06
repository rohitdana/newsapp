import 'package:flutter/material.dart';
import 'package:newsapp/rseetpassword.screen.dart';

class Forget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(25, 30, 45, 0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 115, 0, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ResetpasswordScreen.routeName);
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
        ],
      ),
    );
  }
}
