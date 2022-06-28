import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:minangkabau_food/style/color.dart';
import 'package:minangkabau_food/views/home_page.dart';
import 'package:minangkabau_food/views/search_page.dart';

class BaseNavigation extends StatefulWidget {
  const BaseNavigation({Key? key}) : super(key: key);

  @override
  State<BaseNavigation> createState() => _BaseNavigationState();
}

class _BaseNavigationState extends State<BaseNavigation> {
  int _selectedIndex = 0;
  static List _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
  ];
  SnakeShape snakeShape = SnakeShape.circle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: snakeShape,
        backgroundColor: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        padding: EdgeInsets.all(12),
        snakeViewColor: Colors.white,
        selectedItemColor: mainColor,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'calendar'),
        ],
      ),
    );
  }
}
