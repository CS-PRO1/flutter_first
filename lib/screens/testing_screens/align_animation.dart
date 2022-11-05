import 'package:flutter/material.dart';

class AnimateAlign extends StatefulWidget {
  AnimateAlign({Key? key}) : super(key: key);

  @override
  State<AnimateAlign> createState() => _AnimateAlignState();
}

class _AnimateAlignState extends State<AnimateAlign> {
  bool align = true;
  bool align2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          InkWell(
            onLongPress: () {
              setState(() {
                align ? align = false : align = true;
              });
            },
            child: AnimatedAlign(
              alignment: align ? Alignment.topLeft : Alignment.bottomRight,
              duration: Duration(seconds: 3),
              child: FlutterLogo(
                size: 30,
              ),
            ),
          ),
          InkWell(
            onDoubleTap: () {
              setState(() {
                align2 ? align2 = false : align2 = true;
              });
            },
            child: AnimatedAlign(
              alignment: align2 ? Alignment.topRight : Alignment.bottomCenter,
              duration: Duration(seconds: 3),
              child: FlutterLogo(
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
