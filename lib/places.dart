import 'package:flutter/material.dart';
import 'package:flutter_application_1/hotels.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

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
  var value = List<double>.filled(hotels.length, 0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.menu_rounded,
            size: 28,
          ),
        ),
        title: Center(
          child: Text(
            'Find Hotels',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
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
                itemBuilder: (context, index) => buildListItem(index, context),
                itemCount: pictures.length,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem(index, context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Image(
                    isAntiAlias: true, image: AssetImage('${pictures[index]}')),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('${hotels[index]}',
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icon(
                          //   Icons.star,
                          //   color: Colors.greenAccent,
                          // ),
                          // Icon(
                          //   Icons.star,
                          //   color: Colors.greenAccent,
                          // ),
                          // Icon(
                          //   Icons.star,
                          //   color: Colors.greenAccent,
                          // ),
                          // Icon(
                          //   Icons.star,
                          //   color: Colors.greenAccent,
                          // ),
                          // Icon(
                          //   Icons.star_half,
                          //   color: Colors.greenAccent,
                          // ),
                          RatingStars(
                            animationDuration: Duration(seconds: 1),
                            starColor: Colors.greenAccent,
                            starSize: 16,
                            value: value[index],
                            valueLabelVisibility: false,
                            onValueChanged: (star) {
                              setState(() {
                                value[index] = star;
                              });
                            },
                          )
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
                      Text(
                        '${prices[index]}',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
