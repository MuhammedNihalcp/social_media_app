import 'package:flutter/material.dart';
import 'package:social_media_app/Screen/home/view/home_view.dart';

class BottomNavContoller extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
  List<Widget>screens= [ScreenHome()];
}
