import 'package:flutter/material.dart';
import 'package:flutter_application_1/hotels.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  var hearts = List.filled(
      hotels.length,
      Icon(
        Icons.favorite_border_rounded,
        color: Colors.grey[200],
        size: 50,
      ));
  var isLiked = List<bool>.filled(hotels.length, false);

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

  Widget buildListItem(index) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Image(image: AssetImage('${pictures[index]}')),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        setState(() {
                          if (isLiked[index]) {
                            isLiked[index] = false;
                            hearts[index] = Icon(Icons.favorite_border_rounded,
                                size: 50, color: Colors.grey[200]);
                          } else {
                            isLiked[index] = true;
                            hearts[index] = Icon(Icons.favorite_rounded,
                                size: 50, color: Colors.pinkAccent);
                          }
                        });
                      },
                      icon: hearts[index],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '${hotels[index]}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
}
