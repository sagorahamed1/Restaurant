import 'package:flutter/material.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';
import 'package:restaurent_kookbags/view/screens/my_kookbags/my_kookbags_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../category/category_screen.dart';
import '../fruits_screen/fruits_screen.dart';
import '../stores/stores_screen.dart';

class BottomNavBar extends StatefulWidget {

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _PageView(_currentIndex),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
    );
  }

  _PageView(int index) {
    switch(index){
      case 0 : return HomeScreen();
      case 1 : return StoresScreen();
      case 2 : return CategoryScreen();
      default : return MyKookBagsScreen();
    }
  }
}