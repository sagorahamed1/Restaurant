import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';
import 'package:restaurent_kookbags/view/screens/mudule/mudule_screen.dart';
import 'package:restaurent_kookbags/view/screens/my_kookbags/my_kookbags_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../category/category_screen.dart';
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
          selectedColorOpacity: 1,
          unselectedItemColor: Colors.black,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Search
            SalomonBottomBarItem(
              icon: SvgPicture.asset(AppIcons.search_for_bottom,color:_currentIndex==0? AppColors.white : Colors.black),
              title: Text("Search",style: TextStyle(color: _currentIndex==0 ? AppColors.white : AppColors.black),),
              selectedColor: AppColors.black,
            ),

            /// Home
            SalomonBottomBarItem(
              icon: SvgPicture.asset(AppIcons.home1,color:_currentIndex==1? AppColors.white : Colors.black),
              title: Text("Home",style: TextStyle(color: _currentIndex==1 ? AppColors.white : AppColors.black),),
              selectedColor: AppColors.black,
            ),

            /// Order
            SalomonBottomBarItem(
              icon:SvgPicture.asset(AppIcons.order_bag,color:_currentIndex==2? AppColors.white : Colors.black),
              title: Text("Orders",style: TextStyle(color: _currentIndex==2 ? AppColors.white : AppColors.black),),
              selectedColor:AppColors.black,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: SvgPicture.asset(AppIcons.person,color:_currentIndex==3? AppColors.white : Colors.black),
              title: Text("Menu",style: TextStyle(color: _currentIndex==3 ? AppColors.white : AppColors.black),),
              selectedColor: AppColors.black,
            ),
          ],
        ),
    );
  }

  _PageView(int index) {
    switch(index){
      case 0 : return const HomeScreen();
      case 1 : return StoresScreen();
      // case 2 : return CategoryScreen();
      case 2 : return MuduleScreen();
      default : return const MyKookBagsScreen();
    }
  }
}