import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ratkum/pages/home.dart';
import 'package:instagram_ratkum/pages/search.dart';

import 'pages/profile.dart';
import 'pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigator bottom
  int _sellectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _sellectedIndex = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    SearchPage(),
    ShopPage(),
    ShopPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_sellectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _sellectedIndex,
          onTap: _navigateBottomNavBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Plus'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop_rounded), label: 'Market'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ));
  }
}
