import 'package:flutter/material.dart';
import 'package:newsapp/feed.detail.screen.dart';

// ignore: must_be_immutable
class Feed extends StatelessWidget {
  List items = [
    {
      "title": "10-day Norway road trip itinerary in\nstunning Fjordland",
      "subtitle":
          "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination.",
      "image": [
        "https://ak6.picdn.net/shutterstock/videos/25456226/thumb/1.jpg",
        "https://hdqwalls.com/download/boat-in-silent-lake-nature-sunset-bj-1440x900.jpg",
        "https://i.pinimg.com/originals/a5/fe/b1/a5feb1b5f3bcaf5bcd18dba1750c756a.jpg"
      ],
      "icon": Icons.format_align_left,
      "date": "29 min ago",
    },
    {
      "title": "No words can\ndescribe the feeling",
      "subtitle":
          "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination.",
      "image": [
        "https://hdqwalls.com/download/boat-in-silent-lake-nature-sunset-bj-1440x900.jpg",
      ],
      "icon": Icons.camera_alt,
      "date": "4 days ago",
    },
    {
      "title": "An inside look at Talia Faria's choreographic",
      "subtitle":
          "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination. ",
      "image": [
        "https://i.pinimg.com/originals/a5/fe/b1/a5feb1b5f3bcaf5bcd18dba1750c756a.jpg"
      ],
      "icon": Icons.videocam,
      "date": "December 04,2019",
    },
    {
      "title": "My 5 highest rated recipes ever",
      "subtitle":
          "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination.",
      "image": ["https://images7.alphacoders.com/817/817988.jpg"],
      "icon": Icons.format_align_left,
      "date": "September 19,2019",
    },
    {
      "title": "Do you really need to warm up before exercise?",
      "subtitle":
          "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination.",
      "image": [
        "http://www.pixelstalk.net/wp-content/uploads/2016/06/Images-HD-Fitness-Backgrounds.jpg"
      ],
      "icon": Icons.videocam,
      "date": "September 02,2019",
    },
    {
      "title": "How reliable is the Porsche 911 GT2RS?",
      "subtitle":
          "This Unesco listed gem one of scenic wonder of the world. It's also a great road trip destination. The execellent roads wind their way along sleek slender lakes, before rising up over vertical granite cliffs. They carry you into beautiful towns and villages and career up mountain roads to snarling glaciers and remote farmes. And carry you to your next beautiful destination.",
      "image":
          "http://img.netcarshow.com/Porsche-911_GT2_RS_2011_1600x1200_wallpaper_34.jpg",
      "icon": Icons.format_align_left,
      "date": "Agudst 28,2019",
    },
  ];
  // void initializeData() {
  //   title.add("10-day Norway road\ntrip itinerary in\nstunning Fjordland");
  //   subtitle.add("29 minutes ago");
  //   image.add(
  //     "https://cdn.kimkim.com/files/a/content_articles/featured_photos/ffb5681d8df256e576aafe4220463d8e9b109030/big-981d0cb1e057c66fb005130efccdae0e.jpg",
  //   );
  //   icon.add(Icons.format_align_left);

  //   title.add("No words can\ndescribe the feelingf");
  //   subtitle.add("4 day ago");
  //   image.add(
  //     "https://get.pxhere.com/photo/tree-water-nature-wilderness-boat-sunlight-morning-leaf-lake-adventure-river-canoe-recreation-pond-environment-reflection-vehicle-natural-autumn-kayak-activity-outdoors-fun-boating-wetland-canoeing-recreational-natural-environment-computer-wallpaper-watercraft-rowing-1151232.jpg",
  //   );
  //   icon.add(Icons.camera_alt);

  //   title.add(
  //     "An inside look at Talia\nFaria's choreographic",
  //   );
  //   subtitle.add("December 04,2019");
  //   image.add(
  //     "https://i.vimeocdn.com/video/198602986_640.jpg",
  //   );
  //   icon.add(Icons.videocam);

  //   title.add("My 5 highest rated\nrecipes ever");
  //   subtitle.add("September 19,2019");
  //   image.add(
  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT08lYfkMuHZGvhSplpugWOuaM2AUdU5P95rnpDe08Cd9ULa2yD&usqp=CAU",
  //   );
  //   icon.add(Icons.content_copy);

  //   title.add("Do you really need\nto warm up before\nexercise");
  //   subtitle.add("September 02,2019");
  //   image.add(
  //     "https://aaptiv.com/magazine/wp-content/uploads/2018/01/18c.jpg",
  //   );
  //   icon.add(Icons.videocam);

  //   title.add("How reliable is the\nPorsche 911 GT2RS?");
  //   subtitle.add("August 28,2019");
  //   image.add(
  //     "https://cdn.motor1.com/images/mgl/2kAmz/s3/porsche-911-gt2-rs-mr.jpg",
  //   );
  //   icon.add(Icons.format_align_left);
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((dynamic e) => getScreen(context, e)).toList()),
    );
  }

  Widget getScreen(context, item) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeedDetailScreen(
                item: item,
              ),
            ));
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    child: Image.network(
                      item["image"][0],
                      height: 185,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 95, 0, 0),
                    child: Text(
                      item["title"],
                      style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontFamily: "josefinSans",
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
                    child: Text(
                      item["date"],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontFamily: "josefinSanss",
                        letterSpacing: 0.02,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    alignment: Alignment.topRight,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(7.67, 11, 0, 0),
                      child: Icon(
                        item["icon"],
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.fromLTRB(275, 150, 10, 0),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                    height: 16,
                    width: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
