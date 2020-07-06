import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newsapp/feedDetail/post.dart';
import 'package:newsapp/feedDetail/postGallery.dart';
import 'package:newsapp/feedDetail/postVideo.dart';

class FeedDetailScreen extends StatelessWidget {
  final item;

  FeedDetailScreen({this.item});

  static const routeName = "\feed-detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: InkWell(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              item["icon"] == Icons.format_align_left
                  ? ContentPost(Item: item)
                  : item["icon"] == Icons.camera_alt
                      ? PostGallery()
                      : PostVideo()
            ],
          ),
        ),
      ),
    );
  }
}
