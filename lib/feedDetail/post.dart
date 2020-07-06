import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
 
import '../feed.screen.dart';

class ContentPost extends StatelessWidget {
  final Item;
  ContentPost({this.Item});
  @override
  Widget build(BuildContext context) {
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
            Container(
              padding: EdgeInsets.fromLTRB(20, 201, 20, 74),
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
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 303, 0, 0),
              child: Text(
                "May 7,2020 at 10:27 am     3,973 views",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontFamily: "josefinSans",
                  fontSize: 18,
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                ),
              ),
            ),
          ],
        ),
        Container(
            child: Screen(
          Item: Item,
        )),
      ],
    );
  }
}

class Screen extends StatelessWidget {
  final Item;
  Screen({this.Item});
  // List<String> title = List();
  // List<String> subtitle = List();
  // List<String> images = List();
  // List<String> images2 = List();
  // List<String> images3 = List();

  // void initializeData() {
  //   title.add(
  //     "Norway's Fjordland is an excellent destination with sublime scenery.",
  //   );
  //   subtitle.add(
  //     "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination.",
  //   );
  //   images.add(
  //     "https://www.luxurytravelmag.com.au/wp-content/uploads/2018/04/Optimized-shutterstock_270474419.jpg",
  //   );
  //   images2.add(
  //     "https://i.pinimg.com/originals/9e/b2/b9/9eb2b92aceda93fd365d7ea45836e615.jpg",
  //   );
  //   images3.add(
  //     "https://i.pinimg.com/originals/9e/b2/b9/9eb2b92aceda93fd365d7ea45836e615.jpg",
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return getScreen(context, Item);
  }

  Widget getScreen(context, item) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
                  child: Text(
                    item["title"],
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
                    item["subtitle"],
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
                  child: Peit(),
                )

                //       GridView.count(
                // crossAxisCount: 2,

                // controller: new ScrollController(keepScrollOffset: false),
                // shrinkWrap: true,
                // scrollDirection: Axis.vertical,
                // children: item["image"].map<Widget>((String value) {
                //   return new Container(

                //     margin: new EdgeInsets.all(1.0),
                //     child: new Center(
                //       child: Image.network(value , height: itemHeight,width: double.infinity,)
                //     ),
                //   );
                // }).toList()
                //       )
              ],
            ),
          ],
        )
      ],
    );
  }
}

const cellRed = Color(0xffc73232);
const cellMustard = Color(0xffd7aa22);
const cellGrey = Color(0xffcfd4e0);
const cellBlue = Color(0xff1553be);
const background = Color(0xff242830);

class Peit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: StaggeredGridView.countBuilder(
  crossAxisCount: 4,
  itemCount: 8,
  itemBuilder: (BuildContext context, int index) => new Container(
      color: Colors.green,
      child: new Center(
        child: new CircleAvatar(
          backgroundColor: Colors.white,
          child: new Text('$index'),
        ),
      )),
  staggeredTileBuilder: (int index) =>
      new StaggeredTile.count(2, index.isEven ? 2 : 1),
  mainAxisSpacing: 4.0,
  crossAxisSpacing: 4.0,
)
    );
  }
}
