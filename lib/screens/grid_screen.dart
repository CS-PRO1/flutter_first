import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/images.dart';

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Test'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.red,
            child: Center(
                child: Text(
              index.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
            )),
          );
        },
      ),
    );
  }
}
