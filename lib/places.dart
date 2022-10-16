import 'dart:math';

import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.menu_rounded,
            color: Colors.black,
            size: 28,
          ),
        ),
        title: Center(
          child: Text(
            'Find Places',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list_rounded,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildListItem(),
                  itemCount: Random().nextInt(12))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem() => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(image: AssetImage('images/zzzz.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Image Title',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.greenAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.greenAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.greenAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.greenAccent,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Description of Image',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                  Text('20\$')
                ],
              )
            ],
          ),
        ),
      );
}
