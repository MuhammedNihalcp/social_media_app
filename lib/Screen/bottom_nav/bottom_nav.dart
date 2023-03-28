import 'package:flutter/material.dart';
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
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                value.currentIndex == 0 ? Icons.home : Icons.home_outlined,
              ),
              label: 'Home',
              backgroundColor: authbuttoncolor,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: authbuttoncolor,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_rounded),
              label: 'Reels',
              backgroundColor: authbuttoncolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(value.currentIndex == 3
                  ? Icons.add_box_rounded
                  : Icons.add_box_outlined),
              label: 'Add',
              backgroundColor: authbuttoncolor,
            ),
            const BottomNavigationBarItem(
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
