import 'package:flutter/material.dart';
import 'package:social_media_app/Screen/home/view/home_view.dart';
import 'package:social_media_app/Screen/post_add_screen/view/post_add_view.dart';
import 'package:social_media_app/Screen/profile_screen/view/profile_view.dart';
import 'package:social_media_app/Screen/reels_screen/view/reels_view.dart';
import 'package:social_media_app/Screen/search_screen/view/search_view.dart';

class BottomNavContoller extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<Widget> screens = [
    ScreenHome(),
    ScreenSearch(),
    ScreenReels(),
    ScreenPostAdd(),
    ScreenProfile(),
  ];
}
