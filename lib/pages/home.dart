import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../util/buble_stories.dart';
import '../util/userposr.dart';

class Home extends StatelessWidget {
  final List people = ['ratkum', 'flutter', 'req', 'sina', 'lol', 'messi'];
  final List photo = [
    'https://instagram.fala4-1.fna.fbcdn.net/v/t51.2885-19/321504014_5702463939822615_624711606193648969_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fala4-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=KX7XkDz6DUkAX-JMoan&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAg56I850XOnmbVRxpqTOMiYLzg7BuLdtiDjP__lBi1Tw&oe=63B4CA4B&_nc_sid=8fd12b',
    'https://sun9-77.userapi.com/impg/guiypknBMCLuAUeA1X1OCqTBbz61pcKRxtG2wQ/b2C07lST1uo.jpg?size=1000x1000&quality=96&sign=d4e564d3d5b878ced4a81779d606bc51&c_uniq_tag=Cn5J_-uz-02mP4yl1OSf56GPBzVpqdihdQmglRHIxxI&type=album',
    'https://pixelbox.ru/wp-content/uploads/2021/10/dark-avatar-vk-pixelbox.ru-2.jpg',
    'https://pixelbox.ru/wp-content/uploads/2021/05/ava-vk-animal-91.jpg',
    'https://pbs.twimg.com/media/DbtrFLiX0AEnCwr?format=jpg&name=medium',
    'https://pixelbox.ru/wp-content/uploads/2021/10/dark-avatar-vk-pixelbox.ru-2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubleStories(
                    text: people[index],
                    photoimage: photo[index],
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPost(name: people[index], post:photo[index],);
                  }
                  ),
          ),
          
        ],
      ),
    );
  }
}
