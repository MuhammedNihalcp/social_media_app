import 'package:flutter/material.dart';

class BottomNavContoller extends ChangeNotifier {
  int currentIndex = 0;
  List<Widget> screens = [];
  List<IconData> icons = [];
  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
