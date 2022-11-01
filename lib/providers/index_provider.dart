import 'package:flutter/material.dart';

class IndexProvider with ChangeNotifier {
  int selectedIndex = 2;

  changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
