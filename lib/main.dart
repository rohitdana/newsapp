import 'package:flutter/material.dart';
import 'package:newsapp/feed.detail.screen.dart';
import 'package:newsapp/feed.screen.dart';
import 'package:newsapp/forget.screen.dart';
import 'package:newsapp/rseetpassword.screen.dart';
import 'package:newsapp/signin.screen.dart';
import 'package:newsapp/signup.screen.dart';
import 'package:newsapp/start.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
      routes: {
        SigninScreen.routeName: (ctx) => SigninScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        ForgetScreen.routeName: (ctx) => ForgetScreen(),
        ResetpasswordScreen.routeName: (ctx) => ResetpasswordScreen(),
        FeedScreen.routeName: (ctx) => FeedScreen(),
        FeedDetailScreen.routeName: (ctx) => FeedDetailScreen(),
      },
    );
  }
}
