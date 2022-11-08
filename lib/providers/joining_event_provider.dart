import 'package:flutter/material.dart';

class JoiningEventProvider with ChangeNotifier {
  bool isJoining = false;
  changeJoiningStatus() {
    isJoining = true;
    notifyListeners();
  }
}
