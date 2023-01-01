import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../util/account_tab1.dart';
import '../util/buble_stories.dart';
import '../util/explore_grid.dart';

class ProfilePage extends StatelessWidget {
  final List textStr = ['ratkum', 'flutter', '2022', '2023'];
  final List photoStr = [
    'https://instagram.fala4-3.fna.fbcdn.net/v/t51.2885-15/311053494_432759655438432_8429819998322361793_n.jpg?stp=c0.307.1080.1080a_dst-jpg_e35_s150x150&_nc_ht=instagram.fala4-3.fna.fbcdn.net&_nc_cat=104&_nc_ohc=ncifDdLmWksAX_4atnP&tn=oOZ4GQLUheIMxoiF&edm=ANmP7GQBAAAA&ccb=7-5&oh=00_AfDbzL6zLucqfKAuoYeNpi668MLf4iiqq9pwVp8D_WAcWg&oe=63B2E84D&_nc_sid=276363',
    'https://instagram.fala4-1.fna.fbcdn.net/v/t51.2885-15/316872228_1100086104037950_1750992779666348972_n.jpg?stp=c0.248.640.640a_dst-jpg_e15_s150x150&_nc_ht=instagram.fala4-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=2d7qSd3icuwAX_5H3lS&edm=ANmP7GQBAAAA&ccb=7-5&oh=00_AfDuNLs8nN_WUhrXrky1L46VlypnIGtAZfcbEIDOdDzRiQ&oe=63B32C0B&_nc_sid=276363',
    'https://yt3.ggpht.com/ytc/AKedOLRQHtIVdc5I5o6Tv2qpon7CnFkA1Kmw4Lbt7-9Pow=s900-c-k-c0x00ffffff-no-rj',
    'https://i4.photo.2gis.com/images/branch/0/30258560047821218_f3a8.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 55),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle,
                      image:DecorationImage ( image: NetworkImage('https://instagram.fala4-1.fna.fbcdn.net/v/t51.2885-19/321504014_5702463939822615_624711606193648969_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fala4-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=KX7XkDz6DUkAX-JMoan&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAg56I850XOnmbVRxpqTOMiYLzg7BuLdtiDjP__lBi1Tw&oe=63B4CA4B&_nc_sid=8fd12b',),
)                        ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '69',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Post',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '1KK',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'RatkuM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Noob Flutter Developer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'https://www.instagram.com/nuriden.m.n/',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 300,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Редактировать',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )),
                Container(
                    alignment: Alignment.center,
                    height: 35,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.add_box_outlined))
              ],
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: textStr.length,
                  itemBuilder: (context, index) {
                    return BubleStories(
                      text: textStr[index],
                      photoimage: photoStr[index],
                    );
                  }),
            ),
            TabBar(labelColor: Colors.grey[800], tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ]),
            Expanded(
                child: TabBarView(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: photoStr.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: AccTab1(
                        profilephoto: photoStr[index],
                      ),
                    );
                  },
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: photoStr.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: AccTab1(
                        profilephoto: photoStr[index],
                      ),
                    );
                  },
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: photoStr.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: AccTab1(
                        profilephoto: photoStr[index],
                      ),
                    );
                  },
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: photoStr.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: AccTab1(
                        profilephoto: photoStr[index],
                      ),
                    );
                  },
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
