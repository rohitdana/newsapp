import 'package:flutter/material.dart';
import 'package:newsapp/rseetpassword.screen.dart';

class Forget extends StatelessWidget {
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
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
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
            ),
          )
        ],
      ),
    );
  }
}
