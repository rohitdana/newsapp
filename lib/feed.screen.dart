import 'package:flutter/material.dart';
import 'package:newsapp/feed.dart';

class FeedScreen extends StatelessWidget {
  static const routeName = '/feed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: InkWell(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(21, 30, 0, 0),
                    child: Text(
                      'Feed',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        fontFamily: "josefinSans",
                        fontSize: 36,
                        letterSpacing: 0.02,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Aythu(),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(21, 25, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Recent",
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.02,
                              color: Colors.black,
                              fontFamily: "josefinSans",
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Popular",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontFamily: "josefinSans",
                              fontSize: 20,
                              letterSpacing: 0.02,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Photos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontFamily: "josefinSans",
                              fontSize: 20,
                              letterSpacing: 0.02,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Videos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontFamily: "josefinSans",
                              fontSize: 20,
                              letterSpacing: 0.02,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Feed(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Aythu extends StatelessWidget {
  List<String> image = List();

  void initializeData() {
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
    image.add(
      "https://i9.dainikbhaskar.com/thumbnails/680x588/web2images/english.fashion101.in/2016/01/10/hrithik2_1452371539.jpg",
    );
  }

  @override
  Widget build(BuildContext context) {
    initializeData();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          getScreen(context, 0),
          getScreen(context, 1),
          getScreen(context, 2),
          getScreen(context, 3),
          getScreen(context, 4),
          getScreen(context, 5),
          getScreen(context, 6),
          getScreen(context, 7),
          getScreen(context, 8),
          getScreen(context, 9),
        ],
      ),
    );
  }

  Widget getScreen(context, index) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                image.elementAt(index),
              ),
              radius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
