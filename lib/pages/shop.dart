import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../util/explore_grid.dart';

class ShopPage extends StatelessWidget {
  final List s_photolist = [
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
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: ClipRRect(
      borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(10),
            color: Colors.grey[300],
            child: Row(
              children: [Icon(Icons.search), Text('Market')],
            )
            ),
      ),
    ),
   body:  ExploreGrid()
    );
  }
}