import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/places.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/users.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => profileScreen()));
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ),
          ],
        ),
        title: Text(
          'Conversations',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              tooltip: 'View places',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StoreScreen()));
              },
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 18,
                ),
              )),
          IconButton(
              tooltip: 'Logout',
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => loginScreen()),
                    (route) => false);
              },
              icon: CircleAvatar(
                child: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.5),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(Icons.search, size: 17, color: Colors.grey[700]),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Search...',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 95,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(index),
                  // itemCount: names.length,
                  itemCount: names.length,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(index),
                  separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                      ),
                  itemCount: names.length),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 64,
        color: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.chat_bubble_fill,
                    size: 35,
                    color: Colors.blue,
                  ),
                  Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.video_camera_solid,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Calls',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_2_fill,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'People',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.square_fill_on_square_fill,
                    size: 35,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Stories',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem(index) => InkWell(
        onTap: () {},
        child: SizedBox(
          width: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('${images[index]}'),
                    radius: 30,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 9,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent[400],
                        radius: 7,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '${names[index]}',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      );

  Widget buildChatItem(index) => InkWell(
        onTap: () {},
        child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('${images[index]}'),
                            radius: 30,
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 9,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.greenAccent[400],
                                radius: 7,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${names[index]}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '${messages[index]}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      Text(
                        '${times[index]}',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500]),
                      ),
                    ],
                  )
                ],
              ),
            )),
      );
}
