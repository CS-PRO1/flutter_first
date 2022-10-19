import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

import 'users.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  bool switchvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     backgroundColor: Colors.white,
        //     foregroundColor: Colors.black,
        //     title: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         CircleAvatar(
        //           backgroundImage: AssetImage('images/zzzz.jpg'),
        //         ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //         Text('Ochako Uraraka'),
        //       ],
        //     ),
        //     actions: [
        //       IconButton(onPressed: () {}, icon: (Icon(Icons.menu_rounded)))
        //     ]),
        body: SafeArea(
      child: ScrollConfiguration(
        behavior: CustomScroll(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('images/zzzz.jpg'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Ochako Uraraka',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5),
                          Text('+963 937 438 298',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(width: 30),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      CupertinoIcons.phone_fill,
                                      color: Colors.green,
                                      size: 35,
                                    ),
                                    Text(
                                      'Audio',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.green),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      CupertinoIcons.video_camera_solid,
                                      color: Colors.green,
                                      size: 40,
                                    ),
                                    Text(
                                      'Video',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.green),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      CupertinoIcons.search,
                                      color: Colors.green,
                                      size: 35,
                                    ),
                                    Text(
                                      'Search',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.green),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('If a hero is in pain, Who\'s gonna save them?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'January 23, 2022',
                          style: TextStyle(
                              fontSize: 12, color: Colors.blueGrey[300]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Media, links, and docs',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey[400],
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blueGrey[400],
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 16,
                                    child: IconButton(
                                        alignment: Alignment.centerLeft,
                                        splashRadius: 1,
                                        padding: EdgeInsets.all(0),
                                        iconSize: 15,
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.blueGrey[400],
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Image(
                                  isAntiAlias: true,
                                  image: AssetImage('images/zzzz.jpg'),
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Image(
                                    isAntiAlias: true,
                                    image: AssetImage('images/zzzz.jpg'),
                                    width: 150,
                                    height: 150,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Image(
                                    isAntiAlias: true,
                                    image: AssetImage('images/zzzz.jpg'),
                                    width: 150,
                                    height: 150,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Text(
                                  'Mute notifications',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: 140,
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Switch(
                                      activeColor: Colors.green[500],
                                      value: switchvalue,
                                      onChanged: (value) {
                                        setState(() {
                                          switchvalue = !switchvalue;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.music_note_rounded,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Text(
                                  'Custom notifications',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.image,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Text(
                                  'Media Visibility',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ]))),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.lock_rounded,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Encryption',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                        'Messages and calls are end-to-end\necrypted. Tap to verify',
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                          color: Colors.blueGrey[400],
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  width: 60,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.hourglass_bottom_rounded,
                                  color: Colors.blueGrey,
                                  size: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Disappearing messages',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('Off',
                                        maxLines: 2,
                                        softWrap: true,
                                        style: TextStyle(
                                          color: Colors.blueGrey[400],
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  width: 90,
                                )
                              ],
                            ),
                          ),
                        ]))),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1 Goup in common',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[400],
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.green,
                                                child: Icon(
                                                  Icons.people_rounded,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                'Create group with Ochako',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15.0),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: Colors.green,
                                                  backgroundImage: AssetImage(
                                                      'images/izuku.jpg'),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Column(children: [
                                                  Text(
                                                    'My Hero Academia',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ]),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]))),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Other phones',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[400],
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '+963 939 329 419',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          'Second',
                                          style: TextStyle(
                                              color: Colors.blueGrey[500],
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.message_rounded,
                                              color: Colors.green,
                                              size: 28,
                                            )),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.phone_rounded,
                                              color: Colors.green,
                                              size: 28,
                                            )),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              CupertinoIcons.video_camera_solid,
                                              color: Colors.green,
                                              size: 30,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ]))),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.block_rounded,
                                      color: Colors.redAccent,
                                      size: 35,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Block Ochako Uraraka',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 4.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Icon(
                                      Icons.thumb_down_alt_rounded,
                                      color: Colors.redAccent,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Report Ochako Uraraka',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              )
                            ]))),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
