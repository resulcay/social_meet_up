import 'package:flutter/material.dart';

class PageIndexController with ChangeNotifier {
  int selectedIndex = 0;

  changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
