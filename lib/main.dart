import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/align_animation.dart';
import 'package:flutter_application_1/animationtween.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/messenger.dart';
import 'package:flutter_application_1/places.dart';
import 'package:flutter_application_1/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  bool isShow = true;
  var icon = Icon(CupertinoIcons.eye_slash_fill);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}


class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
