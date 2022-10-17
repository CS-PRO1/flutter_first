import 'package:flutter/material.dart';
import 'package:flutter_application_1/hotels.dart';

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
            'Find Hotels',
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
                itemBuilder: (context, index) => buildListItem(index),
                itemCount: pictures.length,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem(index) => Card(
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image(image: AssetImage('${pictures[index]}')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${hotels[index]}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
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
                      child: Text('${locations[index]}',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                    Text('${prices[index]}'),
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
