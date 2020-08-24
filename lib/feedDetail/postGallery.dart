import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newsapp/feed.screen.dart';

class PostGallery extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Item;
  // ignore: non_constant_identifier_names
  PostGallery({this.Item});
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
                color: Colors.white,
                height: 980,
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
                  color: Colors.white,
                ),
                label: Text(
                  "BACK",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "josefinSans",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      height: 1.3),
                ),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 135, 20, 27),
              child: Text(
                Item["title"],
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "josefinSans",
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  letterSpacing: 0.1,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 219, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "May 1,2020 at 10:27 am",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontFamily: "josefinSans",
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    "3,793 views",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontFamily: "josefinSans",
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 256, 20, 0),
              child: Text(
                Item["subtitle2"],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  fontFamily: "josefinSans",
                  letterSpacing: 0.02,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 320, 20, 0),
              child: GridView.count(
                crossAxisCount: cac,
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                children: Item["image"].map<Widget>((String value) {
                  return Container(
                    margin: EdgeInsets.all(14),
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
              padding: EdgeInsets.fromLTRB(0, 810, 0, 0),
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
              padding: EdgeInsets.fromLTRB(0, 871, 0, 0),
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
    );
  }
}
