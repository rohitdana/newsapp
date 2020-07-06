import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../feed.screen.dart';

class ContentPost extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Item;
  // ignore: non_constant_identifier_names
  ContentPost({this.Item});
  @override
  Widget build(BuildContext context) {
    int cac = Item["image"].length > 1 ? 2 : 1;

    log(cac.toString());
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              child: Image.network(
                Item["image"][0],
                height: 370,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 58, 0, 0),
              alignment: Alignment.topLeft,
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed(FeedScreen.routeName);
                },
                padding: EdgeInsets.fromLTRB(5, 5, 12, 5),
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 30,
                  color: Colors.black,
                ),
                label: Text(
                  'BACK',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "josefinSans",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      height: 1.3),
                ),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
                bottom: 60,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    Item["title"],
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "josefinSans",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.1,
                    ),
                  ),
                )),
            Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "May 7,2020 at 10:27 am ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontFamily: "josefinSans",
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                        ),
                      ),
                      Text(
                        "3,793 views",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontFamily: "josefinSans",
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
          child: Text(
            Item["title"],
            style: TextStyle(
              fontFamily: "josefinSans",
              fontSize: 28,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.02,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Text(
            Item["subtitle"],
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              fontFamily: "josefinSans",
              letterSpacing: 0.02,
            ),
          ),
        ),
        GridView.count(
            crossAxisCount: cac,
            controller: new ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            children: Item["image"].map<Widget>((String value) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: new DecorationImage(
                      image: new NetworkImage(value),
                      fit: BoxFit.cover,
                    )),
              );
            }).toList())
      ],
    );
  }
}
