import 'package:flutter/cupertino.dart';

class AppBarProvider with ChangeNotifier {
  bool isExpanded = true;
  expandAppBar() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
