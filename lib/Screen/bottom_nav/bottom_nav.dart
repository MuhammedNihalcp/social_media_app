import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:social_media_app/core/const_color.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavContoller>(
        builder: (context, value, child) => value.screens[value.currentIndex],
      ),
      bottomNavigationBar:
          Consumer<BottomNavContoller>(builder: (context, value, child) {
        return BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: true,
          backgroundColor: authbuttoncolor,
          currentIndex: value.currentIndex,
          onTap: (index) {
            value.changeIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: authbuttoncolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: authbuttoncolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_rounded),
              label: 'Reels',
              backgroundColor: authbuttoncolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Add',
              backgroundColor: authbuttoncolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              backgroundColor: authbuttoncolor,
            )
          ],
        );
      }),
    );
  }
}
