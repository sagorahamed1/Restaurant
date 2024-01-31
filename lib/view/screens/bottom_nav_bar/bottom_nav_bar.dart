import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_icons.dart';
import 'package:restaurent_kookbags/view/screens/home/home_screen.dart';
import 'package:restaurent_kookbags/view/screens/menu/menu_screen.dart';
import 'package:restaurent_kookbags/view/screens/mudule/mudule_screen.dart';
import 'package:restaurent_kookbags/view/screens/search/search_screen.dart';
import 'package:restaurent_kookbags/view/widgets/custom_text.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../stores/stores_screen.dart';
import 'inner_widgets/order_dialog_with_gridview.dart';

class BottomNavBar extends StatefulWidget {

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _currentIndex = 0;
  var _lastSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _PageView(_currentIndex),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          selectedColorOpacity: 1,
          unselectedItemColor: Colors.black,
          // onTap: (i) => setState(() => _currentIndex = i),
          onTap: (i) => _onItemTapped(i),
          items: [
            /// Search
            SalomonBottomBarItem(
              icon: SvgPicture.asset(AppIcons.search_for_bottom,color:_currentIndex==0? AppColors.white : Colors.black),
              title: Text("Search",style: TextStyle(color: _currentIndex==0? AppColors.white : AppColors.black),),
              selectedColor: AppColors.black,
            ),

            /// Home
            SalomonBottomBarItem(
              icon: SvgPicture.asset(AppIcons.home1,color:_currentIndex==1? AppColors.white : Colors.black),
              title: Text("Home",style: TextStyle(color: _currentIndex==1? AppColors.white : AppColors.black),),
              selectedColor: AppColors.black,
            ),

            /// Order
            SalomonBottomBarItem(
              icon:SvgPicture.asset(AppIcons.order_bag,color:_currentIndex==2? AppColors.white : Colors.black),
              title: Text("Orders",style: TextStyle(color: _currentIndex==2? AppColors.white : AppColors.black),),
              selectedColor:AppColors.black,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: SvgPicture.asset(AppIcons.person,color:_currentIndex==3? AppColors.white : Colors.black),
              title: Text("Menu",style: TextStyle(color: _currentIndex==3? AppColors.white : AppColors.black),),
              selectedColor: AppColors.black,
            ),
          ],
        ),
    );
  }

  _PageView(int index) {
    switch(index){
      case 0 : return const SearchScreen();
      case 1 : return const MuduleScreen();
      case 2 : return const HomeScreen();
      default : return const MenuScreen();
    }
  }





///-----------------------this method is when user check order item show a dialog and other item dialog not show on ui----------------------->
  void _onItemTapped(int index) {
    setState(() {
      ///------------- Check if the same tab is tapped again-------------->
      if (index == _lastSelectedIndex) {
        ///-------------------------- Show dialog if the order bottom nav bar items and other bottom nav bar items is not show dialog----------------------------->
        if(index==0 || index ==1 || index == 3){
          null;
        }else{
          showDialog(
            // barrierColor: Colors.green,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                // backgroundColor: AppColors.white,
                insetPadding: EdgeInsets.only(top: 400.w,bottom: 50.w),

                ///------------------------order dialog with gridview widget ----------------------------------->
                child: OrderDialogWithGridview(),
              );
            },
          );
        }
      } else {
        /// ---------------------------Update current index when user chick bottom nav bar index----------------------------->
         _lastSelectedIndex = _currentIndex;
        _currentIndex = index;
      }
    });
  }
}
