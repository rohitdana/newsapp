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
                      color: Colors.white,
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
              ),
            ),
          ],
        ),
        Column(
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
                    color: Colors.white,
                    height: 1085,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
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
                  padding: EdgeInsets.fromLTRB(20, 140, 20, 0),
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
                Container(
                  padding: EdgeInsets.fromLTRB(20, 340, 20, 0),
                  child: GridView.count(
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
                    }).toList(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 700, 20, 0),
                  child: Text(
                    Item["subtitle2"],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      fontFamily: "josefinSans",
                      letterSpacing: 0.02,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 930, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "TRAVEL",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "NORWAY",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 20, 10, 0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "SHARE",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 980, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 41, 0, 0),
                        child: Text(
                          "Recent",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "josefinSans",
                              fontSize: 20,
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(32, 41, 0, 0),
                        child: Text(
                          "Popular",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "josefinSans",
                            letterSpacing: 2,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(80, 41, 0, 0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontFamily: "josefinSans",
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
