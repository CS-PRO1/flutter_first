import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

import '../models/users.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                Container(
                  width: double.infinity,
                  color: Theme.of(context).canvasColor,
                  child: Material(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
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
                            style: Theme.of(context).textTheme.headline4,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //SizedBox(width: 30),
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        CupertinoIcons.phone_fill,
                                        color: Theme.of(context).primaryColor,
                                        size: 35,
                                      ),
                                      Text(
                                        'Audio',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        CupertinoIcons.video_camera_solid,
                                        color: Theme.of(context).primaryColor,
                                        size: 40,
                                      ),
                                      Text(
                                        'Video',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Theme.of(context).primaryColor),
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        CupertinoIcons.search,
                                        color: Theme.of(context).primaryColor,
                                        size: 35,
                                      ),
                                      Text(
                                        'Search',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Theme.of(context).primaryColor),
                                      )
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   width: 30,
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: Theme.of(context).canvasColor,
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
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  color: Theme.of(context).canvasColor,
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
                              Material(
                                color: Colors.transparent,
                                child: Row(
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
                                          splashRadius: 20,
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.all(0),
                                          iconSize: 15,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.blueGrey[400],
                                          )),
                                    ),
                                  ],
                                ),
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
                    color: Theme.of(context).canvasColor,
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Column(children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  switchvalue = !switchvalue;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      color: Colors.blueGrey,
                                      size: 30,
                                    ),
                                    Text('Mute notifications',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                    Container(
                                      width: 140,
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Switch(
                                          //activecolor: Theme.of(context).primaryColor[500],
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
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.music_note_rounded,
                                      color: Colors.blueGrey,
                                      size: 30,
                                    ),
                                    Text('Custom notifications',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                    SizedBox(
                                      width: 120,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.image,
                                      color: Colors.blueGrey,
                                      size: 30,
                                    ),
                                    Text('Media Visibility',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                    SizedBox(
                                      width: 160,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ))),
                SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    color: Theme.of(context).canvasColor,
                    child: Material(
                      color: Colors.transparent,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(children: [
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.lock_rounded,
                                      color: Colors.blueGrey,
                                      size: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Encryption',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        Text(
                                            'Messages and calls are end-to-end\necrypted. Tap to verify',
                                            maxLines: 2,
                                            softWrap: true,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2)
                                      ],
                                    ),
                                    SizedBox(
                                      width: 60,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.hourglass_bottom_rounded,
                                      color: Colors.blueGrey,
                                      size: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Disappearing messages',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        Text('Off',
                                            maxLines: 2,
                                            softWrap: true,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2)
                                      ],
                                    ),
                                    SizedBox(
                                      width: 90,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ])),
                    )),
                SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    color: Theme.of(context).canvasColor,
                    child: Material(
                      color: Colors.transparent,
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
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              right: 5,
                                              left: 5,
                                            ),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .primaryColor,
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
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/izuku.jpg'),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Column(children: [
                                                  Text(
                                                    'My Hero Academia',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2,
                                                  ),
                                                ]),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ])),
                    )),
                SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    color: Theme.of(context).canvasColor,
                    child: Material(
                      color: Colors.transparent,
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
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
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                size: 28,
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.phone_rounded,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                size: 28,
                                              )),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                CupertinoIcons
                                                    .video_camera_solid,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                size: 30,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ])),
                    )),
                SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    color: Theme.of(context).canvasColor,
                    child: Material(
                      color: Colors.transparent,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                  ),
                                )
                              ])),
                    )),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
